# frozen_string_literal: true

require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Play do
  let(:name) { 'another play' }
  let(:builder) { Ansible::Ruby::DslBuilders::Play.new name }

  def evaluate
    builder.instance_eval ruby
    builder._result
  end

  subject(:play) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'with name' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'

      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it do
      is_expected.to have_attributes hosts: 'host1',
                                     name: 'another play'
    end

    describe 'tasks' do
      subject { play.tasks }

      it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
      it { is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task)) }
    end

    describe 'hash keys' do
      subject { play.to_h.stringify_keys.keys }

      it { is_expected.to eq %w[hosts name tasks] }
    end
  end

  context 'vars' do
    let(:ruby) do
      <<-RUBY
          hosts 'host1'

          vars var1: 'value1'

          task 'Copy something' do
              copy do
                src '/file1.conf'
                dest '/file2.conf'
              end
          end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it do
      is_expected.to have_attributes hosts: 'host1',
                                     name: 'another play',
                                     vars: { var1: 'value1' }
    end
  end

  context 'multiple tasks' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'

      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end

      task 'Copy something else' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    subject { play.tasks }

    it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
    it do
      is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task),
                                                    be_a(Ansible::Ruby::Models::Task))
    end
  end

  context 'include' do
    context 'with roles' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'
        ansible_include '/some_file.yml'
        roles %w(role1 role2)
        RUBY
      end

      it 'should raise an error' do
        expect {evaluate}.to raise_error 'Includes cannot be used in a play using a role. They can only be used in task files or in plays with a task list.'
      end
    end

    context 'with tasks' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'

        ansible_include '/some_file.yml'

        task 'Copy something' do
            copy do
              src '/file1.conf'
              dest '/file2.conf'
            end
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it do
        is_expected.to have_attributes hosts: 'host1',
                                       name: 'another play'
      end

      describe 'tasks' do
        subject { play.tasks }

        it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
        it do
          is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task)),
                                         inclusions: include(be_a(Ansible::Ruby::Models::Inclusion))
        end
      end

      describe 'hash keys' do
        subject { play.to_h.stringify_keys.keys }

        it { is_expected.to eq %w[hosts name tasks] }
      end
    end
  end

  context 'no name' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'

      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end
    let(:name) { nil }

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it { is_expected.to have_attributes hosts: 'host1' }

    describe 'hash keys' do
      subject { play.to_h.stringify_keys.keys }

      it { is_expected.to eq %w[hosts tasks] }
    end
  end

  context 'block' do
    context 'valid' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'

        block do
          task 'copy' do
            copy do
              src '/file1.conf'
              dest '/file2.conf'
            end
          end

          ansible_when "ansible_distribution == 'CentOS'"
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it { is_expected.to have_attributes hosts: 'host1' }

      describe 'tasks' do
        subject { play.tasks }

        it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
        it { is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Block)) }
      end

      describe 'hash keys' do
        subject { play.to_h.stringify_keys.keys }

        it { is_expected.to eq %w[hosts name tasks] }
      end
    end

    context 'no task' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'

        block do
          ansible_when "ansible_distribution == 'CentOS'"
        end
        RUBY
      end

      it 'should raise an error' do
        expect {evaluate}.to raise_error 'Validation failed: Tasks Must have at least 1 task in your block!'
      end
    end

    context 'no block' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'

        block
        RUBY
      end

      it 'should raise an error' do
        expect {evaluate}.to raise_error 'wrong number of arguments (given 0, expected 1..3)'
      end
    end
  end

  context 'localhost shortcut' do
    let(:ruby) do
      <<-RUBY
      local_host

      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }

    it do
      is_expected.to have_attributes hosts: 'localhost',
                                     connection: :local
    end
  end

  context 'no name provided' do
    let(:builder) { Ansible::Ruby::DslBuilders::Play.new }

    let(:ruby) do
      <<-RUBY
      hosts 'host1'

      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    describe 'hash keys' do
      subject { play.to_h.stringify_keys.keys }

      it { is_expected.to eq %w[hosts tasks] }
    end
  end

  context 'tag for entire playbook' do
    let(:ruby) do
      <<-RUBY
          hosts 'host1'
          roles 'role1'
          tags :foo_123
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it { is_expected.to_not have_attributes tasks: be_truthy }
    it do
      is_expected.to have_attributes roles: 'role1',
                                     hosts: 'host1',
                                     tags: [:foo_123]
    end
  end

  context 'tags for entire playbook' do
    let(:ruby) do
      <<-RUBY
          hosts 'host1'
          roles 'role1'
          tags :foo_123, :bar
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it { is_expected.to_not have_attributes tasks: be_truthy }
    it do
      is_expected.to have_attributes roles: 'role1',
                                     hosts: 'host1',
                                     tags: %i[foo_123 bar]
    end
  end

  context 'roles' do
    context '1 line' do
      let(:ruby) do
        <<-RUBY
            hosts 'host1'
            roles %w(role1 role2)
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it { is_expected.to_not have_attributes tasks: be_truthy }
      it do
        is_expected.to have_attributes roles: %w[role1 role2],
                                       hosts: 'host1'
      end
    end

    context 'shorthand' do
      let(:ruby) do
        <<-RUBY
            hosts 'host1'
            role 'role1'
            role 'role2'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it { is_expected.to_not have_attributes tasks: be_truthy }
      it do
        is_expected.to have_attributes roles: [{ role: 'role1' }, { role: 'role2' }],
                                       hosts: 'host1'
      end
    end

    context '1 line with role tags' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'
        roles [{role:'role1', tags: ['clone']}, {role:'role2', tags: ['clone2']}]
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it { is_expected.to_not have_attributes tasks: be_truthy }
      it do
        is_expected.to have_attributes roles: [{ role: 'role1', tags: ['clone'] },
                                               { role: 'role2', tags: ['clone2'] }],
                                       hosts: 'host1'
      end
    end

    context '2 lines with role tags' do
      let(:ruby) do
        <<-RUBY
          hosts 'host1'
          role 'role1', tag: 'clone'
          role 'role2', tag: 'clone2'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it { is_expected.to_not have_attributes tasks: be_truthy }
      it do
        is_expected.to have_attributes roles: [{ role: 'role1', tags: ['clone'] },
                                               { role: 'role2', tags: ['clone2'] }],
                                       hosts: 'host1'
      end
    end

    context 'Multiple role tags' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'
        role 'role1', tags: ['clone', 'foo']
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it { is_expected.to_not have_attributes tasks: be_truthy }
      it do
        is_expected.to have_attributes roles: [{ role: 'role1', tags: %w[clone foo] }],
                                       hosts: 'host1'
      end
    end

    context 'role when expression' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'
        role 'role1', when: 'some_expression'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Play }
      it { is_expected.to_not have_attributes tasks: be_truthy }
      it do
        is_expected.to have_attributes roles: [{ role: 'role1', when: 'some_expression' }],
                                       hosts: 'host1'
      end
    end
  end

  context 'invalid keyword' do
    let(:ruby) { 'foobar' }

    it 'should raise an error' do
      expect {evaluate}.to raise_error(%r{Invalid method/local variable `foobar'. Only valid options are \[:ansible_include.*})
    end
  end

  context 'other attributes' do
    # We don't build name or tasks the same way as others
    (Ansible::Ruby::Models::Play.instance_methods - Object.instance_methods - %i[name= tasks= inclusions= attributes= tags=])
      .select { |method| method.to_s.end_with?('=') }
      .map { |method| method.to_s[0..-2] }
      .each do |method|

      context method do
        let(:ruby) { "#{method} 'some_value'" }

        it { is_expected.to be_a Ansible::Ruby::Models::Play }

        it 'has the builder value' do
          expect(play.send(method)).to eq 'some_value'
        end
      end
    end
  end

  context 'jinja' do
    let(:ruby) do
      <<~RUBY
              hosts 'host1'
        roles %w(role1 role2)
              user jinja('centos')
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it do
      is_expected.to have_attributes roles: %w[role1 role2],
                                     user: Ansible::Ruby::Models::JinjaExpression.new('centos'),
                                     name: 'another play',
                                     hosts: 'host1'
    end
  end
end
