# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::DslBuilders::Args do
  let(:builder) { Ansible::Ruby::DslBuilders::Args.new recipient }

  let(:klass) do
    klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
    end
    stub_const 'Ansible::Ruby::Modules::Copy', klass
    klass
  end

  subject(:recipient) { klass.new {} }

  before { builder.instance_eval ruby }

  context 'jinja' do
    context 'variable' do
      let(:ruby) do
        <<-RUBY
        src jinja('a_file')
        dest '/file2.conf'
        RUBY
      end

      it { is_expected.to be_a Ansible::Ruby::Modules::Copy }
      it do
        is_expected.to have_attributes src: '{{ a_file }}',
                                       dest: '/file2.conf'
      end
    end

    context 'item' do
      context 'single value' do
        let(:ruby) do
          <<-RUBY
            item = Ansible::Ruby::DslBuilders::JinjaItemNode.new

            src item
            dest '/file2.conf'
          RUBY
        end

        it { is_expected.to be_a Ansible::Ruby::Modules::Copy }

        it do
          is_expected.to have_attributes src: '{{ item }}',
                                         dest: '/file2.conf'
        end
      end

      context 'array' do
        let(:ruby) do
          <<-RUBY
            item = Ansible::Ruby::DslBuilders::JinjaItemNode.new

            src [item, item]
            dest '/file2.conf'
          RUBY
        end

        it { is_expected.to be_a Ansible::Ruby::Modules::Copy }

        it do
          is_expected.to have_attributes src: ['{{ item }}', '{{ item }}'],
                                         dest: '/file2.conf'
        end
      end

      context 'mixed values' do
        let(:ruby) do
          <<-RUBY
            item = Ansible::Ruby::DslBuilders::JinjaItemNode.new

            src [item, item.key]
            dest '/file2.conf'
          RUBY
        end

        it { is_expected.to be_a Ansible::Ruby::Modules::Copy }

        it do
          is_expected.to have_attributes src: ['{{ item }}', '{{ item.key }}'],
                                         dest: '/file2.conf'
        end
      end

      context 'hash' do
        let(:ruby) do
          <<-RUBY
            item = Ansible::Ruby::DslBuilders::JinjaItemNode.new

            src stuff: item, bar: item
            dest '/file2.conf'
          RUBY
        end

        it { is_expected.to be_a Ansible::Ruby::Modules::Copy }

        it do
          is_expected.to have_attributes src: {
            stuff: '{{ item }}',
            bar: '{{ item }}'
          },
                                         dest: '/file2.conf'
        end
      end
    end
  end

  context 'Ruby Kernel methods' do
    pending 'write this'
  end
end
