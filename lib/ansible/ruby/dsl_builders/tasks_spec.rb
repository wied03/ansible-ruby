# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Tasks do
  let(:context) { Ansible::Ruby::Models::Tasks }
  let(:builder) { Ansible::Ruby::DslBuilders::Tasks.new context }

  def _evaluate
    builder._evaluate ruby
  end

  subject(:tasks) { _evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'task' do
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

    it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
    it do
      is_expected.to have_attributes tasks: include(be_a(Ansible::Ruby::Models::Task))
    end

    describe 'hash keys' do
      subject { tasks.tasks.map { |task| task.to_h.stringify_keys.keys } }

      it { is_expected.to eq [%w(name copy)] }
    end
  end

  context 'handler' do
    let(:context) { Ansible::Ruby::Models::Handlers }

    let(:ruby) do
      <<-RUBY
      handler 'Copy something' do
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Handlers }
    it do
      is_expected.to have_attributes tasks: include(be_a(Ansible::Ruby::Models::Handler))
    end

    describe 'hash keys' do
      subject { tasks.tasks.map { |task| task.to_h.stringify_keys.keys } }

      it { is_expected.to eq [%w(name copy)] }
    end
  end
end
