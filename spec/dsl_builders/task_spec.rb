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

  context 'register' do
    context 'changed when' do
      let(:ruby) do
        <<-RUBY
        task 'Copy something' do
          atomic_result = copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
          changed_when "'No upgrade available' not in \#{atomic_result.stdout}"
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Task }
      it { is_expected.to have_attributes name: 'Copy something',
                                          register: 'result_1',
                                          changed_when: "'No upgrade available' not in result_1.stdout",
                                          module: be_a(Ansible::Ruby::Modules::Copy) }

      describe 'hash keys' do
        subject { task.to_h.keys }

        it { is_expected.to eq %w(name copy register changed_when) }
      end
    end

    context 'syntax error' do
      let(:ruby) do
        <<-RUBY
        task 'Copy something' do
          atomic_result = copy do
            src '/file1.conf'
            dest '/file2.conf'
          end
          changed_when "'No upgrade available' not in \#{atomicc_result.stdout}"
        end
        RUBY
      end

      subject { lambda { evaluate } }

      it { is_expected.to raise_error NameError, /undefined local variable or method `atomicc_result' for.*/ }
    end

    context 'failed when' do
      pending 'write this'
    end

    context 'ansible_when' do
      pending 'write this'
    end
  end
end
