# frozen_string_literal: true

require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::DslBuilders::FileLevel do
  let(:builder) { Ansible::Ruby::DslBuilders::FileLevel.new }

  def evaluate
    builder.instance_eval ruby
    builder._result
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
    context 'empty' do
      let(:ruby) { '' }

      subject { -> { evaluate } }

      it { is_expected.to raise_error 'Must supply at least 1 handler/task/play!' }
    end

    context 'with' do
      let(:ruby) do
        <<-RUBY
          handler 'copy_reboot' do
            copy do
              src '/file1.conf'
              dest '/file2.conf'
            end
          end
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Tasks }
      it { is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Handler)) }
    end
  end

  context 'includes' do
    context 'inside playbook' do
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

            ansible_include 'foobar'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Models::Playbook }

      it do
        is_expected.to have_attributes plays: include(be_a(Ansible::Ruby::Models::Play)),
                                       inclusions: include(be_a(Ansible::Ruby::Models::Inclusion))
      end
    end

    context 'inside play' do
      let(:ruby) do
        <<-RUBY
        play 'the play name' do
          hosts 'host1'
          ansible_include 'foobar'

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
        is_expected.to have_attributes plays: include(be_a(Ansible::Ruby::Models::Play)),
                                       inclusions: []
      end

      describe 'play' do
        subject(:play) { result.plays.first }

        it { is_expected.to be_a Ansible::Ruby::Models::Play }

        describe 'tasks' do
          subject { play.tasks }

          it { is_expected.to be_a Ansible::Ruby::Models::Tasks }

          it { is_expected.to have_attributes inclusions: include(be_a(Ansible::Ruby::Models::Inclusion)) }
        end
      end
    end

    context 'inside tasks' do
      let(:ruby) do
        <<-RUBY
        ansible_include 'foobar'

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
        is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task),
                                                      be_a(Ansible::Ruby::Models::Task)),
                                       inclusions: include(be_a(Ansible::Ruby::Models::Inclusion))
      end
    end
  end

  context 'invalid keyword' do
    let(:ruby) { 'foobar()' }

    subject { -> { evaluate } }

    it { is_expected.to raise_error "Invalid method/local variable `foobar'. Only valid options are [:task, :handler, :play]" }
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
      is_expected.to have_attributes items: include(be_a(Ansible::Ruby::Models::Task),
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

    it { is_expected.to raise_error 'This is a playbook file, cannot use tasks here!' }
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

    it { is_expected.to raise_error 'This is a tasks file, cannot use playbook here!' }
  end

  describe '#_handled_eval' do
    subject(:result) do
      exception = builder._handled_eval filename
      exception || builder._result
    end

    let(:filename) { 'file_level_test.rb' }

    around do |example|
      File.write filename, ruby
      example.run
      FileUtils.rm_rf filename
    end

    context 'no error' do
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
    end

    context 'error' do
      let(:ruby) do
        <<-RUBY
        task 'Copy something' do
          copy do
            src '/file1.conf'
            foobar '/file2.conf'
          end
        end
        RUBY
      end

      it { is_expected.to be_a Exception }

      describe 'message' do
        subject { result.message + "\n" }

        it do
          is_expected.to eq <<~ERROR
            Unknown attribute 'foobar' for Ansible::Ruby::Modules::Copy.

            Valid attributes are: [:dest, :src]

            ****Error Location:****
            file_level_test.rb:4
            file_level_test.rb:2
            file_level_test.rb:1
          ERROR
        end
      end
    end
  end
end
