# frozen_string_literal: true

# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::DslBuilders::Args do
  let(:builder) { Ansible::Ruby::DslBuilders::Args.new recipient }

  let(:recipient_klass) do
    recipient_klass = Class.new(Ansible::Ruby::Modules::Base) do
      attribute :src
      validates :src, presence: true
      attribute :dest
      validates :dest, presence: true
      # E.g. like the URI module
      attribute :method
    end
    stub_const 'Ansible::Ruby::Modules::Copy', recipient_klass
    recipient_klass
  end

  subject(:recipient) { recipient_klass.new {} }

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
    Ansible::Ruby::DslBuilders::Args::KERNEL_METHOD_OVERRIDES.each do |method|
      context "##{method}" do
        let(:recipient_klass) do
          klass = super()
          klass.class_eval { attribute method }
          klass
        end

        let(:ruby) { "#{method} 123" }

        it { is_expected.to have_attributes method => 123 }
      end
    end
  end

  context 'method as an attribute' do
    let(:ruby) do
      <<-RUBY
        src 'stuff'
        dest '/file2.conf'
        method 'foo'
      RUBY
    end

    it { is_expected.to be_a Ansible::Ruby::Modules::Copy }
    it do
      is_expected.to have_attributes src: 'stuff',
                                     dest: '/file2.conf',
                                     method: 'foo'
    end
  end
end
