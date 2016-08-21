require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Task do
  let(:builder) { Ansible::Ruby::DslBuilders::Task.new }

  def evaluate
    builder.evaluate ruby
  end

  subject { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::BasicUnit) do
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
  end

  context 'other attributes' do
    pending 'write this'
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
