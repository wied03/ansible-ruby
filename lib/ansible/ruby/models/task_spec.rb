# frozen_string_literal: true
require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::Models::Task do
  before do
    stub_const('Ansible::Ruby::Modules::Ec2', module_klass)
  end

  let(:module_klass) do
    Class.new(Ansible::Ruby::Modules::Base) do
      attribute :foo
      validates :foo, presence: true
      attribute :bar
    end
  end

  subject(:hash) {instance.to_h}

  context 'basic' do
    let(:instance) do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      module: module_klass.new(foo: 123)
    end

    it do
      is_expected.to eq(name: 'do stuff on EC2',
                        ec2: {
                          foo: 123
                        })
    end
  end

  context 'attributes' do
    let(:instance) do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      become: true,
                                      become_user: 'root',
                                      module: module_klass.new(foo: 123),
                                      notify: %w(handler1 handler2)
    end

    it do
      is_expected.to eq(name: 'do stuff on EC2',
                        ec2: {
                          foo: 123
                        },
                        become: true,
                        become_user: 'root',
                        notify: %w(handler1 handler2))
    end

    describe 'key order' do
      subject {hash.stringify_keys.keys}

      it {is_expected.to eq %w(name ec2 become become_user notify)}
    end
  end

  context 'local action' do
    let(:instance) do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      module: module_klass.new(foo: 123),
                                      local_action: true
    end

    it do
      is_expected.to eq(name: 'do stuff on EC2',
                        local_action: {
                          module: 'ec2',
                          foo: 123
                        },
                        sudo: false)
    end
  end

  context 'single notify' do
    let(:instance) do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      module: module_klass.new(foo: 123),
                                      notify: 'handler1'
    end

    it do
      is_expected.to eq(name: 'do stuff on EC2',
                        ec2: {
                          foo: 123
                        },
                        notify: %w(handler1))
    end
  end

  context 'dict and items' do
    subject do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      module: module_klass.new(foo: 123),
                                      with_items: 'foo',
                                      with_dict: 'foo'
    end

    it {is_expected.to_not be_valid}
    it {is_expected.to have_errors with_items: 'Cannot use both with_items and with_dict!'}
  end

  context 'inclusion only' do
    let(:instance) do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      inclusion: Ansible::Ruby::Models::Inclusion.new(file: 'something.yml')
    end

    it do
      is_expected.to eq(name: 'do stuff on EC2',
                        include: 'something.yml')
    end
  end

  context 'inclusion and module' do
    let(:instance) do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      inclusion: Ansible::Ruby::Models::Inclusion.new(file: 'something.yml'),
                                      module: module_klass.new(foo: 123)
    end

    subject {-> {instance.to_h}}

    it {is_expected.to raise_error 'Validation failed: Module You must either use an include or a module but not both!'}
  end

  context 'vars' do
    let(:instance) do
      Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                      module: module_klass.new(foo: 123),
                                      vars: { howdy: 123 }
    end

    it do
      is_expected.to eq(name: 'do stuff on EC2',
                        ec2: {
                          foo: 123
                        },
                        vars: {
                          howdy: 123
                        })
    end
  end
end
