# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Tasks do
  let(:context) { :tasks }
  let(:builder) { Ansible::Ruby::DslBuilders::Tasks.new context }

  def evaluate
    builder.instance_eval ruby
    builder._result
  end

  subject(:tasks) { evaluate }

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
      is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task))
    end

    describe 'hash keys' do
      subject { tasks.items.map { |task| task.to_h.stringify_keys.keys } }

      it { is_expected.to eq [%w(name copy)] }
    end
  end

  context 'include' do
    context 'standard' do
      let(:ruby) do
        <<-RUBY
        ansible_include '/some_file.yml'

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
        is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task),
                                                      be_a(Ansible::Ruby::Models::Inclusion))
      end
    end

    context 'with variables' do
      pending 'write this'
    end

    context 'static' do
      pending 'write this'
    end
  end

  context 'invalid method' do
    let(:ruby) { 'foobar()' }
    subject { -> { evaluate } }

    context 'tasks context' do
      let(:context) { :tasks }

      it { is_expected.to raise_error "Invalid method/local variable `foobar'. Only [:task] is valid at line 1!" }
    end

    context 'handler context' do
      let(:context) { :handlers }

      it { is_expected.to raise_error "Invalid method/local variable `foobar'. Only [:handler] is valid at line 1!" }
    end
  end

  context 'no name supplied' do
    [:handlers, :tasks].each do |type|
      context type do
        let(:context) { type }
        let(:singular) { type[0..-2] }
        let(:ruby) { "#{singular} { copy { src 'file1'\n dest 'file2'} }" }

        subject { -> { evaluate } }

        it { is_expected.to raise_error "Validation failed: Name can't be blank at line 1!" }
      end
    end
  end

  context 'handler' do
    let(:context) { :handlers }

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

    it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
    it do
      is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Handler))
    end

    describe 'hash keys' do
      subject { tasks.items.map { |task| task.to_h.stringify_keys.keys } }

      it { is_expected.to eq [%w(name copy)] }
    end
  end
end
