# frozen_string_literal: true

# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Tasks do
  let(:context) { :tasks }
  let(:builder) { Ansible::Ruby::DslBuilders::Tasks.new context }

  def evaluate
    builder.instance_eval ruby
    builder._result
  end

  subject(:tasks) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'task' do
    let(:ruby) do
      <<-RUBY
      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
    it do
      is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task))
    end

    describe 'hash keys' do
      subject { tasks.items.map { |task| task.to_h.stringify_keys.keys } }

      it { is_expected.to eq [%w[name copy]] }
    end
  end

  context 'register variables' do
    context 'no usage outside of task' do
      let(:ruby) do
        <<-RUBY
      task 'Copy something' do
        result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end

        changed_when "'No upgrade available' not in \#{result.stdout}"
      end
      task 'middle task' do
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
      end
      task 'Copy something else' do
        result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end

        changed_when "'yes' not in \#{result.stdout}"
      end
        RUBY
      end

      describe 'task 1' do
        subject { tasks.items[0] }

        it do
          is_expected.to have_attributes register: 'result_1',
                                         changed_when: "'No upgrade available' not in result_1.stdout"
        end
      end

      describe 'task 3' do
        subject { tasks.items[2] }

        it do
          is_expected.to have_attributes register: 'result_4',
                                         changed_when: "'yes' not in result_4.stdout"
        end
      end
    end

    context 'usage between tasks' do
      let(:ruby) do
        <<-RUBY
        stuff = task 'Copy something' do
          result = copy do
            src '/file1.conf'
            dest '/file2.conf'
          end

          changed_when "'No upgrade available' not in \#{result.stdout}"
        end

        task 'Copy something else' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end

          ansible_when "'yes' not in \#{stuff.stdout}"
        end
        RUBY
      end

      it 'uses result from first task' do
        items = tasks.items
        expect(items[0]).to have_attributes register: 'result_5',
                                            changed_when: "'No upgrade available' not in result_5.stdout"
        second = items[1]
        expect(second).to have_attributes when: "'yes' not in result_5.stdout",
                                          register: nil
      end
    end

    context 'usage between task without use in first task' do
      let(:ruby) do
        <<-RUBY
        stuff = task 'Copy something' do
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

          ansible_when "'yes' not in \#{stuff.stdout}"
        end
        RUBY
      end

      it 'uses result from first task' do
        items = tasks.items
        expect(items[0]).to have_attributes register: 'result_6'
        second = items[1]
        expect(second).to have_attributes when: "'yes' not in result_6.stdout",
                                          register: nil
      end
    end

    context 'usage within tasks and multiple register' do
      let(:ruby) do
        <<-RUBY
          stuff = task 'Copy something' do
            result = copy do
              src '/file1.conf'
              dest '/file2.conf'
            end

            changed_when "'No upgrade available' not in \#{result.stdout}"
          end
          task 'Copy something else' do
            result = copy do
              src '/file1.conf'
              dest '/file2.conf'
            end

            changed_when "'yes' not in \#{result.stdout}"
            ansible_when "'yes' not in \#{stuff.stdout}"
          end
        RUBY
      end

      it 'uses result from first task' do
        items = tasks.items
        expect(items[0]).to have_attributes register: 'result_7',
                                            changed_when: "'No upgrade available' not in result_7.stdout"
        second = items[1]
        expect(second).to have_attributes when: "'yes' not in result_7.stdout",
                                          register: 'result_8',
                                          changed_when: "'yes' not in result_8.stdout"
      end
    end
  end

  context 'include' do
    subject(:inclusion) { tasks.inclusions.first }

    context 'with tasks' do
      subject { evaluate }

      let(:ruby) do
        <<-RUBY
        ansible_include '/some_file.yml'

        task 'Copy something' do
            copy do
              src '/file1.conf'
              dest '/file2.conf'
            end
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
      it do
        is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task)),
                                       inclusions: include(be_a(Ansible::Ruby::Models::Inclusion))
      end

      describe 'inclusion' do
        subject { inclusion }

        it { is_expected.to have_attributes file: '/some_file.yml' }
      end
    end

    context 'with variables' do
      let(:ruby) do
        <<-RUBY
          ansible_include '/some_file.yml' do
            static true
            variables stuff: true
          end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Inclusion }
      it do
        is_expected.to have_attributes file: '/some_file.yml',
                                       static: true,
                                       variables: { stuff: true }
      end
    end

    context 'jinja' do
      let(:ruby) do
        <<-RUBY
        ansible_include '/some_file.yml' do
          static true
          variables stuff: jinja('toodles')
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Inclusion }
      it do
        is_expected.to have_attributes file: '/some_file.yml',
                                       variables: { stuff: Ansible::Ruby::Models::JinjaExpression.new('toodles') }
      end
    end

    context 'static' do
      let(:ruby) do
        <<-RUBY
        ansible_include '/some_file.yml' do
          static true
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Inclusion }
      it do
        is_expected.to have_attributes file: '/some_file.yml',
                                       static: true
      end
    end
  end

  context 'invalid method' do
    let(:ruby) { 'foobar()' }

    context 'tasks context' do
      let(:context) { :tasks }

      it 'should raise an error' do
        expect {evaluate}.to raise_error "Invalid method/local variable `foobar'. Only [:task] is valid"
      end
    end

    context 'handler context' do
      let(:context) { :handlers }

      it 'should raise an error' do
        expect {evaluate}.to raise_error  "Invalid method/local variable `foobar'. Only [:handler] is valid"
      end
    end
  end

  context 'no name supplied' do
    %i[handlers tasks].each do |type|
      context type do
        let(:context) { type }
        let(:singular) { type[0..-2] }
        let(:ruby) { "#{singular} { copy { src 'file1'\n dest 'file2'} }" }

        it 'should raise an error' do
          expect {evaluate}.to raise_error "Validation failed: Name can't be blank"
        end
      end
    end
  end

  context 'handler' do
    let(:context) { :handlers }

    let(:ruby) do
      <<-RUBY
      handler 'Copy something' do
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
    it do
      is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Handler))
    end

    describe 'hash keys' do
      subject { tasks.items.map { |task| task.to_h.stringify_keys.keys } }

      it { is_expected.to eq [%w[name copy]] }
    end
  end
end
