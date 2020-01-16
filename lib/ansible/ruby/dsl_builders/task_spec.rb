# frozen_string_literal: true

require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Task do
  let(:context) { Ansible::Ruby::Models::Task }
  let(:builder) { Ansible::Ruby::DslBuilders::Task.new 'Copy something', context }

  def evaluate
    builder.instance_eval ruby
    @variable = builder._register
    builder._result
  end

  subject(:task) { evaluate }

  before do
    Ansible::Ruby::DslBuilders::Task.counter_variable = 0
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
    debug_module = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :msg
    end
    stub_const 'Ansible::Ruby::Modules::Debug', debug_module
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

    it { is_expected.to be_a Ansible::Ruby::Models::Task }

    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it { is_expected.to have_attributes name: 'Copy something', module: be_a(Ansible::Ruby::Modules::Copy) }
    end

    describe 'hash keys' do
      subject { task.to_h.stringify_keys.keys }

      it { is_expected.to eq %w[name copy] }
    end
  end

  context 'fail module' do
    let(:ruby) do
      <<-RUBY
      ansible_fail do
        msg 'foo'
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Task }

    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it { is_expected.to have_attributes name: 'Copy something', module: be_a(Ansible::Ruby::Modules::Fail) }
    end
  end

  context 'block/rescue/always inside task' do
    let(:ruby) do
      <<-RUBY
      ansible_block do
        task 'do copy' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
        end
      end
      ansible_rescue do
        task 'do debug' do
          debug {msg 'foo'}
        end
        task 'do fail' do
          ansible_fail {msg 'bar'}
        end
      end
      ansible_always do
        task 'do always' do
          debug {msg 'stuff'}
        end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Task }
    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it {
        is_expected.to have_attributes name: 'Copy something',
                                       block: be_a(Ansible::Ruby::Models::Block),
                                       rescue: be_a(Ansible::Ruby::Models::Block)
      }
    end

    describe 'block' do
      subject(:block) { task.block }

      it 'has 1 copy task' do
        tasks = block.tasks
        expect(tasks.size).to eq 1
        task = tasks[0]
        expect(task.module).to be_a Ansible::Ruby::Modules::Copy
      end
    end

    describe 'rescue' do
      subject(:ansible_rescue) { task.rescue }

      it 'has 1 debug task' do
        tasks = ansible_rescue.tasks
        expect(tasks.size).to eq 2
        task = tasks[0]
        expect(task.module).to be_a Ansible::Ruby::Modules::Debug
      end

      it 'has 1 fail task' do
        tasks = ansible_rescue.tasks
        expect(tasks.size).to eq 2
        task = tasks[1]
        expect(task.module).to be_a Ansible::Ruby::Modules::Fail
      end
    end

    describe 'always' do
      subject(:ansible_always) { task.always }

      it 'has 1 debug task' do
        tasks = ansible_always.tasks
        expect(tasks.size).to eq 1
        task = tasks[0]
        expect(task.module).to be_a Ansible::Ruby::Modules::Debug
      end
    end
  end

  context 'vars' do
    let(:ruby) do
      <<-RUBY
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        vars foo: 123
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Task }

    describe 'hash keys' do
      subject { task.to_h.stringify_keys.keys }

      it { is_expected.to eq %w[name copy vars] }
    end
  end

  context 'delegate_to' do
    let(:ruby) do
      <<-RUBY
            copy do
              src '/file1.conf'
              dest '/file2.conf'
            end
            delegate_to 'somehost'
      RUBY
    end
    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       module: be_a(Ansible::Ruby::Modules::Copy),
                                       delegate_to: 'somehost'
      end
    end
  end

  context 'delegate_to with facts' do
    let(:ruby) do
      <<-RUBY
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
          delegate_to 'somehost'
          delegate_facts true
      RUBY
    end
    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       module: be_a(Ansible::Ruby::Modules::Copy),
                                       delegate_to: 'somehost',
                                       delegate_facts: true
      end
    end
  end

  context 'local_action' do
    let(:ruby) do
      <<-RUBY
      local_action do
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
      end
      RUBY
    end

    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       module: be_a(Ansible::Ruby::Modules::Copy),
                                       local_action: true
      end
    end
  end

  context 'remote user' do
    let(:ruby) do
      <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      delegate_to 'somehost'
      remote_user 'foobar'
      RUBY
    end
    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Models::Task }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       module: be_a(Ansible::Ruby::Modules::Copy),
                                       delegate_to: 'somehost',
                                       remote_user: 'foobar'
      end
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
            listen 'foobar'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Handler }
      it { is_expected.to have_attributes name: 'Copy something',
                                          module: be_a(Ansible::Ruby::Modules::Copy),
                                          listen: 'foobar' }
    end

    context 'include' do
      let(:context) { Ansible::Ruby::Models::Handler }

      let(:ruby) do
        <<-RUBY
        ansible_include 'something'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Handler }
      it do
        is_expected.to have_attributes name: 'Copy something',
                                       inclusion: be_a(Ansible::Ruby::Models::Inclusion)
      end
    end
  end

  context 'includes' do
    context 'inclusion only' do
      let(:ruby) do
        <<-RUBY
          ansible_include 'foobar.yml'
        RUBY
      end

      it do
        is_expected.to have_attributes name: 'Copy something',
                                       inclusion: be_a(Ansible::Ruby::Models::Inclusion)
      end

      it 'does not include th module key' do
        expect(task.to_h.keys).to_not include :module
      end
    end

    context 'include and module' do
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

      it { is_expected.to raise_error %r{You must either use an include or a module/block but not both.*} }
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
                                     with_dict: Ansible::Ruby::Models::JinjaExpression.new('servers')
    end
  end

  context 'other attributes' do
    before do
      # We just want to ensure values pass through to the model, validation isn't important here
      allow(builder).to receive(:validate?).and_return(false)
    end

    # We don't build name or tasks the same way as others
    (Ansible::Ruby::Models::Task.instance_methods - Object.instance_methods - %i[name= module= register= when= inclusion= vars= local_action= attributes= block= rescue= always=])
        .select { |method| method.to_s.end_with?('=') }
        .map { |method| method.to_s[0..-2] }
        .each do |method|

      context method do
        let(:ruby) { "#{method} 'some_value'\ncopy do\nsrc 'file1'\ndest 'file2'\nend\n" }

        it { is_expected.to be_a Ansible::Ruby::Models::Task }

        it 'has the builder value' do
          expect(task.send(method)).to eq 'some_value'
        end
      end
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

      it { is_expected.to raise_error %r{Invalid method/local variable `foobar'. Only valid options are.*} }
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

    it { is_expected.to raise_error(/Invalid module call `debug' since `copy' module has already been used in this task. Only valid options are.*/) }
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
                                       with_items: Ansible::Ruby::Models::JinjaExpression.new('servers'),
                                       module: have_attributes(src: Ansible::Ruby::Models::JinjaExpression.new('item'))
      end
    end

    context 'splat' do
      let(:ruby) do
        <<-RUBY
            with_items(jinja('servers1'), jinja('servers2')) do |item|
              copy do
                src item
                dest '/file2.conf'
              end
            end
        RUBY
      end

      it do
        is_expected.to have_attributes name: 'Copy something',
                                       with_items: [Ansible::Ruby::Models::JinjaExpression.new('servers1'),
                                                    Ansible::Ruby::Models::JinjaExpression.new('servers2')],
                                       module: have_attributes(src: Ansible::Ruby::Models::JinjaExpression.new('item'))
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
                                       with_items: Ansible::Ruby::Models::JinjaExpression.new('servers'),
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
                                     with_dict: Ansible::Ruby::Models::JinjaExpression.new('servers'),
                                     module: have_attributes(src: Ansible::Ruby::Models::JinjaExpression.new('item.value.toodles'),
                                                             dest: Ansible::Ruby::Models::JinjaExpression.new('item.key'))
    end
  end

  context 'no modules' do
    let(:ruby) do
      <<-RUBY
      become
      RUBY
    end

    subject { -> { evaluate } }

    it { is_expected.to raise_error %r{You must either use an include or a module/block but not both.*} }
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
    context 'valid' do
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

      it 'returns a result that matches the register usage' do
        expect(task.register).to eq 'result_1'
        expect(@variable.something).to eq 'result_1.something'
      end

      it 'returns a result that matches the register usage regardless of order' do
        # trigger execution
        stuff = task
        expect(@variable.something).to eq 'result_1.something'
        expect(stuff.register).to eq 'result_1'
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
  end

  context 'attempt to use listen with task' do
    let(:ruby) do
      <<-RUBY
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      listen 'foobar'
      RUBY
    end

    subject { -> { evaluate } }

    it { is_expected.to raise_error(%r{Invalid method/local variable `listen.*}) }
  end
end
