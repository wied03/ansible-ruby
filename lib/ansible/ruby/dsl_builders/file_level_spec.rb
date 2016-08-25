require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::FileLevel do
  let(:builder) { Ansible::Ruby::DslBuilders::FileLevel.new }

  def evaluate
    builder._evaluate ruby
  end

  subject(:result) { evaluate }

  before do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
  end

  context 'handlers' do
    context 'without handlers' do
      pending 'write this'
    end

    context 'with' do
      let(:ruby) do
        <<-RUBY
        handlers do
          handler 'copy_reboot' do
            copy do
              src '/file1.conf'
              dest '/file2.conf'
            end
          end
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Handlers }
      it { is_expected.to have_attributes handlers: include(be_a(Ansible::Ruby::Models::Handler)) }
    end
  end

  context 'playbook' do
    context 'named' do
      let(:ruby) do
        <<-RUBY
        play 'the play name' do
          hosts 'host1'

          task 'Copy something' do
              copy do
                src '/file1.conf'
                dest '/file2.conf'
              end
          end
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Playbook }

      it do
        is_expected.to have_attributes plays: include(be_a(Ansible::Ruby::Models::Play))
      end
    end

    context 'unnamed' do
      let(:ruby) do
        <<-RUBY
        play do
          hosts 'host1'

          task 'Copy something' do
              copy do
                src '/file1.conf'
                dest '/file2.conf'
              end
          end
        end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Playbook }

      it do
        is_expected.to have_attributes plays: include(be_a(Ansible::Ruby::Models::Play))
      end
    end
  end

  context 'tasks' do
    let(:ruby) do
      <<-RUBY
      task 'Copy something' do
        copy do
          src '/file1.conf'
          dest '/file2.conf'
        end
      end

      task 'Copy something else' do
        copy do
          src '/file3.conf'
          dest '/file4.conf'
        end
      end
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
    it do
      is_expected.to have_attributes tasks: include(be_a(Ansible::Ruby::Models::Task),
                                                    be_a(Ansible::Ruby::Models::Task))
    end
  end

  context 'change from play to task' do
    subject { -> { evaluate } }

    let(:ruby) do
      <<-RUBY
      play 'the play name' do
        hosts 'host1'
        roles %w(role1 role2)
      end

      task 'Copy something else' do
        copy do
          src '/file3.conf'
          dest '/file4.conf'
        end
      end
      RUBY
    end

    it { is_expected.to raise_error 'This is a playbook file due to a play coming before this task, cannot use task here!' }
  end

  context 'change from task to play' do
    subject { -> { evaluate } }

    let(:ruby) do
      <<-RUBY
      task 'Copy something else' do
        copy do
          src '/file3.conf'
          dest '/file4.conf'
        end
      end

      play 'the play name' do
        hosts 'host1'
        roles %w(role1 role2)
      end
      RUBY
    end

    it { is_expected.to raise_error 'This is a tasks file due to a task coming before this play, cannot use play here!' }
  end
end
