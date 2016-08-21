require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::Task do
  let(:builder) { Ansible::Ruby::DslBuilders::Task.new 'Copy something' }

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
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    describe 'task object' do
      it { is_expected.to be_a Ansible::Ruby::Task }
      it { is_expected.to have_attributes name: 'Copy something', module: be_a(Ansible::Ruby::Modules::Copy) }
    end

    describe 'hash keys' do
      subject { task.to_h.keys }

      it { is_expected.to eq %w(name copy) }
    end
  end

  context 'other attributes' do
    let(:ruby) do
      <<-RUBY
      become true
      become_user 'root'
      with_dict '{{ servers }}'
      async 0
      poll 50
      ignore_errors true
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Task }
    it { is_expected.to have_attributes name: 'Copy something',
                                        become: true,
                                        become_user: 'root',
                                        async: 0,
                                        poll: 50,
                                        ignore_errors: true,
                                        module: be_a(Ansible::Ruby::Modules::Copy) }
  end

  context 'no modules' do
    let(:ruby) do
      <<-RUBY
      become
      RUBY
    end

    subject { lambda { evaluate } }

    it { is_expected.to raise_error 'You forgot to supply a module to run!' }
  end

  context 'implicit bool true' do
    let(:ruby) do
      <<-RUBY
      become
      ignore_errors
      copy do
        src '/file1.conf'
        dest '/file2.conf'
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Task }
    it { is_expected.to have_attributes name: 'Copy something',
                                        become: true,
                                        ignore_errors: true,
                                        module: be_a(Ansible::Ruby::Modules::Copy) }
  end

  context 'register' do
    context 'changed when' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        changed_when "'No upgrade available' not in \#{atomic_result.stdout}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Task }
      it { is_expected.to have_attributes name: 'Copy something',
                                          register: 'result_1',
                                          changed_when: "'No upgrade available' not in result_1.stdout",
                                          module: be_a(Ansible::Ruby::Modules::Copy) }
    end

    context 'syntax error' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        changed_when "'No upgrade available' not in \#{atomicc_result.stdout}"
        RUBY
      end

      subject { lambda { evaluate } }

      it { is_expected.to raise_error NameError, /undefined local variable or method `atomicc_result' for.*/ }
    end

    context 'failed when' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        failed_when "'No upgrade available' not in \#{atomic_result.stdout}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Task }
      it { is_expected.to have_attributes name: 'Copy something',
                                          register: 'result_1',
                                          failed_when: "'No upgrade available' not in result_1.stdout",
                                          module: be_a(Ansible::Ruby::Modules::Copy) }
    end

    context 'ansible_when' do
      let(:ruby) do
        <<-RUBY
        atomic_result = copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
        ansible_when "'No upgrade available' not in \#{atomic_result.stdout}"
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Task }
      it { is_expected.to have_attributes name: 'Copy something',
                                          register: 'result_1',
                                          when: "'No upgrade available' not in result_1.stdout",
                                          module: be_a(Ansible::Ruby::Modules::Copy) }
    end
  end
end
