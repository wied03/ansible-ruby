# frozen_string_literal: true

# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Models::Block do
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
      Ansible::Ruby::Models::Block.new tasks: [task1, task2]
    end

    it do
      is_expected.to eq block: [
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

  context 'vars' do
    let(:instance) do
      Ansible::Ruby::Models::Block.new tasks: [task1, task2],
                                       vars: { howdy: 123 }
    end

    it do
      is_expected.to eq block: [
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
      ],
                        vars: {
                          howdy: 123
                        }
    end
  end
end
