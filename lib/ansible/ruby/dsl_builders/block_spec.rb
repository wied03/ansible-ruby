# frozen_string_literal: true

# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::DslBuilders::Block do
  let(:context) { Ansible::Ruby::Models::Task }
  let(:builder) { Ansible::Ruby::DslBuilders::Block.new }

  def evaluate
    builder.instance_eval ruby
    builder._result
  end

  subject(:block) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'single task' do
    let(:ruby) do
      <<-RUBY
      task 'Copy something' do
        copy do
          src '/file1.conf'
        end
      end

      ansible_when "ansible_distribution == 'CentOS'"
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Block }
    it { is_expected.to have_attributes when: "ansible_distribution == 'CentOS'" }

    describe 'tasks' do
      subject(:tasks) { block.tasks }

      it { is_expected.to have_attributes length: 1 }

      describe 'task' do
        subject { tasks[0] }

        it { is_expected.to have_attributes name: 'Copy something', module: be_a(Ansible::Ruby::Modules::Copy) }
      end
    end

    describe 'hash keys' do
      subject { block.to_h.stringify_keys.keys }

      it { is_expected.to eq %w[block when] }
    end
  end

  context 'vars' do
    let(:ruby) do
      <<-RUBY
          task 'Copy something' do
            copy do
              src '/file1.conf'
            end
          end
          vars foo: 123
          ansible_when "ansible_distribution == 'CentOS'"
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Block }
    it do
      is_expected.to have_attributes when: "ansible_distribution == 'CentOS'",
                                     vars: { foo: 123 }
    end
  end

  context 'other attributes' do
    let(:ruby) do
      <<-RUBY
      task 'Copy something' do
        copy do
          src '/file1.conf'
        end
      end

      become true
      become_user 'root'
      ignore_errors true
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Block }
    it do
      is_expected.to have_attributes tasks: include(Ansible::Ruby::Models::Task),
                                     become: true,
                                     become_user: 'root',
                                     ignore_errors: true
    end
  end

  context 'unknown keyword' do
    let(:ruby) { 'foobar()' }

    subject { -> { evaluate } }

    it { is_expected.to raise_error "Invalid method/local variable `foobar'. Only valid options are [:ansible_when, :become, :become_user, :ignore_errors, :jinja, :task, :vars]" }
  end

  context 'register' do
    context 'no usage outside of task' do
      let(:ruby) do
        <<-RUBY
        task 'Copy something' do
          result = copy do
            src '/file1.conf'
          end

          changed_when "'No upgrade available' not in \#{result.stdout}"
        end
        task 'Copy something else' do
          result = copy do
            src '/file1.conf'
          end

          changed_when "'yes' not in \#{result.stdout}"
        end
        RUBY
      end

      describe 'task 1' do
        subject { block.tasks[0] }

        it do
          is_expected.to have_attributes register: 'result_1',
                                         changed_when: "'No upgrade available' not in result_1.stdout"
        end
      end

      describe 'task 2' do
        subject { block.tasks[1] }

        it do
          is_expected.to have_attributes register: 'result_2',
                                         changed_when: "'yes' not in result_2.stdout"
        end
      end
    end

    context 'usage between tasks' do
      let(:ruby) do
        <<-RUBY
        stuff = task 'Copy something' do
          result = copy do
            src '/file1.conf'
          end

          changed_when "'No upgrade available' not in \#{result.stdout}"
        end

        task 'Copy something else' do
          copy do
            src '/file1.conf'
          end

          ansible_when "'yes' not in \#{stuff.stdout}"
        end
        RUBY
      end

      it 'uses result from first task' do
        items = block.tasks
        expect(items[0]).to have_attributes register: 'result_1',
                                            changed_when: "'No upgrade available' not in result_1.stdout"
        second = items[1]
        expect(second).to have_attributes when: "'yes' not in result_1.stdout",
                                          register: nil
      end
    end

    context 'usage between task without use in first task' do
      let(:ruby) do
        <<-RUBY
        stuff = task 'Copy something' do
          copy do
            src '/file1.conf'
          end
        end

        task 'Copy something else' do
          copy do
            src '/file1.conf'
          end

          ansible_when "'yes' not in \#{stuff.stdout}"
        end
        RUBY
      end

      it 'uses result from first task' do
        items = block.tasks
        expect(items[0]).to have_attributes register: 'result_1'
        second = items[1]
        expect(second).to have_attributes when: "'yes' not in result_1.stdout",
                                          register: nil
      end
    end
  end
end
