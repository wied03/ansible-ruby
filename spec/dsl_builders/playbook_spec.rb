require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Playbook do
  let(:builder) { Ansible::Ruby::DslBuilders::Playbook.new }

  def evaluate
    builder.evaluate ruby
  end

  subject(:playbook) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src, required: true
      attribute :dest, required: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'task' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'

      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Playbook }
    it { is_expected.to have_attributes tasks: be_a(Ansible::Ruby::Task),
                                        hosts: 'host1' }

    describe 'hash keys' do
      subject { playbook.to_h.keys }

      it { is_expected.to eq %w(hosts tasks) }
    end
  end

  context 'roles' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'
      roles %w(role1 role2)
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Playbook }
    it { is_expected.to have_attributes roles: %w(role1 role2),
                                        hosts: 'host1' }
  end

  context 'other attributes' do
    let(:ruby) do
      <<-RUBY
      hosts 'host1'
      roles %w(role1 role2)
      connection :local
      user 'centos'
      serial 1
      gather_facts true
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Playbook }
    it { is_expected.to have_attributes roles: %w(role1 role2),
                                        connection: :local,
                                        user: 'centos',
                                        serial: 1,
                                        gather_facts: true,
                                        hosts: 'host1' }
  end
end
