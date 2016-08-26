require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::Models::Tasks do
  before do
    stub_const('Ansible::Ruby::Modules::Ec2', module_klass)
  end

  let(:module_klass) do
    Class.new(Ansible::Ruby::Modules::Base) do
      attribute :foo
      validates :foo, presence: true
    end
  end

  let(:task1) do
    Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                    module: module_klass.new(foo: 123)
  end

  let(:task2) do
    Ansible::Ruby::Models::Task.new name: 'do more stuff on EC2',
                                    module: module_klass.new(foo: 456)
  end

  subject(:hash) { instance.to_h }

  context 'basic' do
    let(:instance) do
      Ansible::Ruby::Models::Tasks.new items: [task1, task2]
    end

    it do
      is_expected.to eq [
        {
          name: 'do stuff on EC2',
          ec2: {
            foo: 123
          }
        },
        {
          name: 'do more stuff on EC2',
          ec2: {
            foo: 456
          }
        }
      ]
    end
  end

  context 'no tasks' do
    let(:instance) do
      Ansible::Ruby::Models::Tasks.new
    end

    subject { -> { instance.to_h } }

    it { is_expected.to raise_error "Validation failed: Items can't be blank" }
  end

  context 'empty tasks' do
    let(:instance) do
      Ansible::Ruby::Models::Tasks.new items: []
    end

    subject { -> { instance.to_h } }

    it { is_expected.to raise_error "Validation failed: Items can't be blank" }
  end
end
