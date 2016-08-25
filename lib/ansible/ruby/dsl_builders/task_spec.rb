require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Task do
  let(:builder) { Ansible::Ruby::DslBuilders::Task.new 'Copy something' }

  def _evaluate
    builder._evaluate ruby
  end

  subject(:task) { _evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'single task' do
    let(:ruby) do
      <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it { is_expected.to have_attributes name: 'Copy something', module: be_a(Ansible::Ruby::Modules::Copy) }
    end

    describe 'hash keys' do
      subject { task.to_h.stringify_keys.keys }

      it { is_expected.to eq %w(name copy) }
    end
  end

  context 'jinja' do
    let(:ruby) do
      <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      with_dict jinja('servers')
      RUBY
    end

    it do
      is_expected.to have_attributes name: 'Copy something',
                                     with_dict: '{{ servers }}'
    end
  end

  context 'other attributes' do
    let(:ruby) do
      <<-RUBY
      become true
      become_user 'root'
      with_dict '{{ servers }}'
      async 0
      poll 50
      ignore_errors true
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      notify 'handler1'
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Task }
    it do
      is_expected.to have_attributes name: 'Copy something',
                                     become: true,
                                     become_user: 'root',
                                     async: 0,
                                     poll: 50,
                                     with_dict: '{{ servers }}',
                                     ignore_errors: true,
                                     notify: 'handler1',
                                     module: be_a(Ansible::Ruby::Modules::Copy)
    end
  end

  context 'jinja_item usage' do
    context 'item.key' do
      context 'with_dict' do
        let(:ruby) do
          <<-RUBY
          copy do
            src jinja_item.key
            dest '/file2.conf'
          end
          with_dict jinja('servers')
          RUBY
        end

        it do
          is_expected.to have_attributes name: 'Copy something',
                                         with_dict: '{{ servers }}',
                                         module: (have_attributes(src: '{{ item.key }}'))
        end
      end

      context 'no with_dict' do
        let(:ruby) do
          <<-RUBY
          copy do
            src jinja_item.key
            dest '/file2.conf'
          end
          RUBY
        end

        subject { -> { _evaluate } }

        it { is_expected.to raise_error 'You used an item.value (e.g. item.key) in your task without using with_dict!' }
      end
    end

    context 'item' do
      context 'with_items' do
        let(:ruby) do
          <<-RUBY
          copy do
            src jinja_item
            dest '/file2.conf'
          end
          with_items jinja('servers')
          RUBY
        end

        it do
          is_expected.to have_attributes name: 'Copy something',
                                         with_items: '{{ servers }}',
                                         module: (have_attributes(src: '{{ item }}'))
        end
      end

      context 'no with_items' do
        let(:ruby) do
          <<-RUBY
          copy do
            src jinja_item
            dest '/file2.conf'
          end
          RUBY
        end

        subject { -> { _evaluate } }

        it { is_expected.to raise_error 'You used an item (e.g. item) in your task without using with_items!' }
      end
    end
  end

  context 'no modules' do
    let(:ruby) do
      <<-RUBY
      become
      RUBY
    end

    subject { -> { _evaluate } }

    it { is_expected.to raise_error "Validation failed: Module can't be blank" }
  end

  context 'implicit bool true' do
    let(:ruby) do
      <<-RUBY
      become
      ignore_errors
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Task }
    it do
      is_expected.to have_attributes name: 'Copy something',
                                     become: true,
                                     ignore_errors: true,
                                     module: be_a(Ansible::Ruby::Modules::Copy)
    end
  end

  context 'register' do
    context 'changed when' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        changed_when "'No upgrade available' not in \#{atomic_result.stdout}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       register: 'result_1',
                                       changed_when: "'No upgrade available' not in result_1.stdout",
                                       module: be_a(Ansible::Ruby::Modules::Copy)
      end
    end

    context 'other field' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        changed_when "'No upgrade available' not in \#{atomic_result.something_else}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       register: 'result_1',
                                       changed_when: "'No upgrade available' not in result_1.something_else",
                                       module: be_a(Ansible::Ruby::Modules::Copy)
      end
    end

    context 'other method' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        changed_when "'No upgrade available' not in \#{atomic_result.something_else(123, 'hello')}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       register: 'result_1',
                                       changed_when: "'No upgrade available' not in result_1.something_else(123, \"hello\")",
                                       module: be_a(Ansible::Ruby::Modules::Copy)
      end
    end

    context 'syntax error' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        changed_when "'No upgrade available' not in \#{atomicc_result.stdout}"
        RUBY
      end

      subject { -> { _evaluate } }

      it { is_expected.to raise_error NameError, /undefined local variable or method `atomicc_result' for.*/ }
    end

    context 'failed when' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        failed_when "'No upgrade available' not in \#{atomic_result.stdout}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       register: 'result_1',
                                       failed_when: "'No upgrade available' not in result_1.stdout",
                                       module: be_a(Ansible::Ruby::Modules::Copy)
      end
    end

    context 'ansible_when' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        ansible_when "'No upgrade available' not in \#{atomic_result.stdout}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       register: 'result_1',
                                       when: "'No upgrade available' not in result_1.stdout",
                                       module: be_a(Ansible::Ruby::Modules::Copy)
      end
    end
  end
end
