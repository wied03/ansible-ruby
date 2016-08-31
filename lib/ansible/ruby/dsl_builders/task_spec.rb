require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Task do
  let(:context) { Ansible::Ruby::Models::Task }
  let(:temp_counter) { 1 }
  let(:builder) { Ansible::Ruby::DslBuilders::Task.new 'Copy something', context, temp_counter }

  def evaluate
    builder.instance_eval ruby
    builder._result
  end

  subject(:task) { evaluate }

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

  context 'handler' do
    context 'no include' do
      let(:context) { Ansible::Ruby::Models::Handler }
      let(:ruby) do
        <<-RUBY
            copy do
              src '/file1.conf'
              dest '/file2.conf'
            end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Handler }
      it { is_expected.to have_attributes name: 'Copy something', module: be_a(Ansible::Ruby::Modules::Copy) }
    end

    context 'include' do
      let(:context) { Ansible::Ruby::Models::Handler }

      let(:ruby) do
        <<-RUBY
        ansible_include 'something'
        RUBY
      end

      subject { -> { evaluate } }

      it { is_expected.to raise_error "Can't call inclusion inside a handler(yet), only in plays/handlers" }
    end
  end

  context 'task inclusion attempt' do
    let(:ruby) do
      <<-RUBY
        ansible_include 'something'
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
      RUBY
    end

    subject { -> { evaluate } }

    it { is_expected.to raise_error "Can't call inclusion inside a task, only in plays/handlers" }
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

  context 'no such attribute' do
    subject { -> { evaluate } }

    context 'before module' do
      let(:ruby) do
        <<-RUBY
          foobar
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
        RUBY
      end

      it { is_expected.to raise_error 'Unknown module foobar' }
    end

    context 'after module' do
      let(:ruby) do
        <<-RUBY
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        foobar
        RUBY
      end

      it { is_expected.to raise_error "Invalid method/local variable `foobar'. Only valid options are [:changed_when, :failed_when, :with_dict, :with_items, :async, :poll, :notify, :become, :become_user, :ansible_when, :ignore_errors, :jinja]" }
    end
  end

  context '2 modules in task' do
    let(:ruby) do
      <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      debug { msg 'hi' }
      RUBY
    end

    subject { -> { evaluate } }

    it { is_expected.to raise_error "Invalid module call `debug' since `copy' module has already been used in this task. Only valid options are [:changed_when, :failed_when, :with_dict, :with_items, :async, :poll, :notify, :become, :become_user, :ansible_when, :ignore_errors, :jinja]" }
  end

  context 'loops' do
    context 'regular task' do
      let(:ruby) do
        <<-RUBY
        with_items(jinja('servers')) do |item|
          copy do
            src item
            dest '/file2.conf'
          end
        end
        RUBY
      end

      it do
        is_expected.to have_attributes name: 'Copy something',
                                       with_items: '{{ servers }}',
                                       module: have_attributes(src: '{{ item }}')
      end
    end

    context 'free form' do
      before do
        klass = Class.new(Ansible::Ruby::Modules::Base) do
          attribute :free_form
          validates :free_form, presence: true
          attribute :src
        end
        stub_const 'Ansible::Ruby::Modules::Jinjafftest', klass
        klass.class_eval do
          include Ansible::Ruby::Modules::FreeForm
        end
      end

      let(:ruby) do
        <<-RUBY
        with_items(jinja('servers')) do |item|
          jinjafftest "howdy \#{item}" do
            src '/file1.conf'
          end
        end
        RUBY
      end

      it do
        is_expected.to have_attributes name: 'Copy something',
                                       with_items: '{{ servers }}',
                                       module: have_attributes(free_form: 'howdy {{ item }}', src: '/file1.conf')
      end
    end
  end

  context 'dictionary' do
    let(:ruby) do
      <<-RUBY
      with_dict(jinja('servers')) do |key, value|
        copy do
          src value.toodles
          dest key
        end
      end
      RUBY
    end

    it do
      is_expected.to have_attributes name: 'Copy something',
                                     with_dict: '{{ servers }}',
                                     module: have_attributes(src: '{{ item.value.toodles }}',
                                                             dest: '{{ item.key }}')
    end
  end

  context 'no modules' do
    let(:ruby) do
      <<-RUBY
      become
      RUBY
    end

    subject { -> { evaluate } }

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

    context 'higher count' do
      let(:temp_counter) { 42 }
      let(:ruby) do
        <<-RUBY
              atomic_result = copy do
                src '/file1.conf'
                dest '/file2.conf'
              end
              changed_when "'No upgrade available' not in \#{atomic_result.stdout}"
        RUBY
      end

      it do
        is_expected.to have_attributes name: 'Copy something',
                                       register: 'result_42',
                                       changed_when: "'No upgrade available' not in result_42.stdout"
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

      subject { -> { evaluate } }

      it { is_expected.to raise_error(%r{Invalid method/local variable `atomicc_result.*}) }
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
