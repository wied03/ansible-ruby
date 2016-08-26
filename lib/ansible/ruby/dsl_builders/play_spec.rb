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
    it { is_expected.to have_attributes hosts: 'host1',
                                        name: 'another play' }

    describe 'tasks' do
      subject { play.tasks }

      it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
      it { is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task)) }
    end

    describe 'hash keys' do
      subject { play.to_h.stringify_keys.keys }

      it { is_expected.to eq %w(hosts name tasks) }
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

      it { is_expected.to eq %w(hosts tasks) }
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

        it { is_expected.to eq %w(hosts name tasks) }
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

      subject { lambda { evaluate } }

      it { is_expected.to raise_error 'Validation failed: Tasks Must have at least 1 task in your block!' }
    end

    context 'no block' do
      let(:ruby) do
        <<-RUBY
        hosts 'host1'

        block
        RUBY
      end

      subject { lambda { evaluate } }

      it { is_expected.to raise_error 'wrong number of arguments (0 for 1..3)' }
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

      it { is_expected.to eq %w(hosts tasks) }
    end
  end

  context 'roles' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'
      roles %w(role1 role2)
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it { is_expected.to_not have_attributes tasks: be_truthy }
    it do
      is_expected.to have_attributes roles: %w(role1 role2),
                                     hosts: 'host1'
    end
  end

  context 'invalid keyword' do
    let(:ruby) { 'foobar' }

    subject { -> { evaluate } }

    it { is_expected.to raise_error "Invalid method/local variable `foobar'. Only valid options are [:hosts, :roles, :connection, :user, :serial, :gather_facts, :local_host, :block, :jinja, :task] at line 1!" }
  end

  context 'other attributes' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'
      roles %w(role1 role2)
      connection :local
      user 'centos'
      serial 1
      gather_facts true
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it do
      is_expected.to have_attributes roles: %w(role1 role2),
                                     connection: :local,
                                     user: 'centos',
                                     serial: 1,
                                     name: 'another play',
                                     gather_facts: true,
                                     hosts: 'host1'
    end
  end

  context 'jinja' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'
roles %w(role1 role2)
      user jinja('centos')
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it do
      is_expected.to have_attributes roles: %w(role1 role2),
                                     user: '{{ centos }}',
                                     name: 'another play',
                                     hosts: 'host1'
    end
  end
end
