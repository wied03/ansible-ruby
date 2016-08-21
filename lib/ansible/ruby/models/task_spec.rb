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

  subject(:hash) { instance.to_h }

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
      subject { hash.stringify_keys.keys }

      it { is_expected.to eq %w(name ec2 become become_user notify) }
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
end