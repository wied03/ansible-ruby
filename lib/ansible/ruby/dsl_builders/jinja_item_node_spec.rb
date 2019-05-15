# frozen_string_literal: true

# see LICENSE.txt in project root
require 'spec_helper'
require 'ansible/ruby/dsl_builders/jinja_item_node'

describe Ansible::Ruby::DslBuilders::JinjaItemNode do
  let(:instance) { Ansible::Ruby::DslBuilders::JinjaItemNode.new }

  describe '#+' do
    subject { instance + something }

    context 'another item node' do
      let(:something) { Ansible::Ruby::DslBuilders::JinjaItemNode.new }

      it { is_expected.to eq '{{ item }}{{ item }}' }
    end

    context 'string' do
      let(:something) { ' foobar' }

      it { is_expected.to eq '{{ item }} foobar' }
    end
  end

  context 'string conversions' do
    %i[to_s to_str].each do |method|
      describe "##{method}" do
        subject { instance.send(method) }

        context 'dictionary' do
          context 'key' do
            subject { instance.key.send(method) }

            it { is_expected.to eq '{{ item.key }}' }
          end

          context 'nested' do
            subject { instance.key.stuff.send(method) }

            it { is_expected.to eq '{{ item.key.stuff }}' }
          end
        end

        context 'ref only' do
          it { is_expected.to eq '{{ item }}' }
        end
      end
    end
  end
end
