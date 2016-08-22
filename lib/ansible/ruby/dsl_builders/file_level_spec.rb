require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::FileLevel do
  let(:builder) { Ansible::Ruby::DslBuilders::FileLevel.new }

  def evaluate
    builder.evaluate ruby
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

  context 'tasks with no name' do
    pending 'write this'
  end

  context 'change from play to task' do
    pending 'write this'
  end

  context 'change from task to play' do
    pending 'write this'
  end
end
