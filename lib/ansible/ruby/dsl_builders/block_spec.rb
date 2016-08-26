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

      it { is_expected.to eq %w(tasks when) }
    end
  end

  context 'other attributes' do
    pending 'write this'
  end

  context 'unknown keyword' do
    pending 'write this'
  end
  pending 'are you allowed to add become, etc. to tasks within a block??'
  pending 'write this'
end
