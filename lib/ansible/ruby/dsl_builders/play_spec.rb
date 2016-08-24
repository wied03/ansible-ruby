require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Play do
  let(:builder) { Ansible::Ruby::DslBuilders::Play.new 'another play' }

  def evaluate
    builder.evaluate ruby
  end

  subject(:playbook) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'with name' do
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

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it { is_expected.to have_attributes hosts: 'host1' }

    describe 'tasks' do
      subject { playbook.tasks }

      it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
      it { is_expected.to have_attributes tasks: include(be_a(Ansible::Ruby::Models::Task)) }
    end

    describe 'hash keys' do
      subject { playbook.to_h.stringify_keys.keys }

      it { is_expected.to eq %w(hosts name tasks) }
    end
  end

  context 'localhost shortcut' do
    let(:ruby) do
      <<-RUBY
      local_host

      task 'Copy something' do
          copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Play }

    it do
      is_expected.to have_attributes hosts: 'localhost',
                                     connection: :local
    end
  end

  context 'no name provided' do
    let(:builder) { Ansible::Ruby::DslBuilders::Play.new }

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

    describe 'hash keys' do
      subject { playbook.to_h.stringify_keys.keys }

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

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it { is_expected.to_not have_attributes tasks: be_truthy }
    it do
      is_expected.to have_attributes roles: %w(role1 role2),
                                     hosts: 'host1'
    end
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

    it { is_expected.to be_a Ansible::Ruby::Models::Play }
    it do
      is_expected.to have_attributes roles: %w(role1 role2),
                                     connection: :local,
                                     user: 'centos',
                                     serial: 1,
                                     name: 'another play',
                                     gather_facts: true,
                                     hosts: 'host1'
    end
  end
end
