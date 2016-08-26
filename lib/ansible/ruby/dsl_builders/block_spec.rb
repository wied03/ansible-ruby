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

      it { is_expected.to eq %w(block when) }
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
      with_dict '{{ servers }}'
      async 0
      poll 50
      ignore_errors true
      notify 'handler1'
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Block }
    it do
      is_expected.to have_attributes tasks: include(Ansible::Ruby::Models::Task),
                                     become: true,
                                     become_user: 'root',
                                     async: 0,
                                     poll: 50,
                                     with_dict: '{{ servers }}',
                                     ignore_errors: true,
                                     notify: 'handler1'
    end
  end

  context 'unknown keyword' do
    let(:ruby) { 'foobar()' }

    subject { lambda { evaluate } }

    it { is_expected.to raise_error "Invalid method/local variable `foobar'. Only valid options are [:task, :become, :become_user, :changed_when, :failed_when, :ansible_when, :with_dict, :with_items, :async, :poll, :notify, :ignore_errors, :jinja] at line 1!" }
  end
end
