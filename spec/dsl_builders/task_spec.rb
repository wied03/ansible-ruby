require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Task do
  let(:builder) { Ansible::Ruby::DslBuilders::Task.new }

  def evaluate
    builder.evaluate ruby
  end

  subject(:task) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src, required: true
      attribute :dest, required: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'single task' do
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

    it { is_expected.to be_a Ansible::Ruby::Task }
    it { is_expected.to have_attributes name: 'Copy something', module: be_a(Ansible::Ruby::Modules::Copy) }

    describe 'hash keys' do
      subject { task.to_h.keys }

      it { is_expected.to eq %w(name copy) }
    end
  end

  context 'other attributes' do
    let(:ruby) do
      <<-RUBY
      task 'Copy something' do
          become true
          become_user 'root'
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Task }
    it { is_expected.to have_attributes name: 'Copy something',
                                        become: true,
                                        become_user: 'root',
                                        module: be_a(Ansible::Ruby::Modules::Copy) }

    describe 'hash keys' do
      subject { task.to_h.keys }

      it { is_expected.to eq %w(name copy become become_user) }
    end
  end

  context 'multiple tasks' do
    pending 'write this'
  end

  context 'register' do
    context 'changed when' do
      pending 'write this'
    end

    context 'failed when' do
      pending 'write this'
    end

    context 'ansible_when' do
      pending 'write this'
    end
  end
end
