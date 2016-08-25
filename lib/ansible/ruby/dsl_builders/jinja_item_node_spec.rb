# see LICENSE.txt in project root
require 'spec_helper'
require 'ansible/ruby/dsl_builders/jinja_item_node'

describe Ansible::Ruby::DslBuilders::JinjaItemNode do
  let(:set_modes) { [] }
  let(:instance) { Ansible::Ruby::DslBuilders::JinjaItemNode.new lambda { |mode| set_modes << mode } }

  describe '#+' do
    subject { instance + something }

    context 'another item node' do
      let(:something) { Ansible::Ruby::DslBuilders::JinjaItemNode.new lambda { |block| } }

      it { is_expected.to eq '{{ item }}{{ item }}' }
    end

    context 'string' do
      let(:something) { ' foobar' }

      it { is_expected.to eq '{{ item }} foobar' }
    end
  end

  context 'string conversions' do
    [:to_s, :to_str].each do |method|
      describe "##{method}" do
        subject { instance.send(method) }

        context 'key' do
          subject { instance.key.send(method) }

          it { is_expected.to eq '{{ item.key }}' }
        end

        context 'nested' do
          subject { instance.key.stuff.send(method) }

          it { is_expected.to eq '{{ item.key.stuff }}' }
        end

        context 'ref only' do
          it { is_expected.to eq '{{ item }}' }
        end
      end
    end
  end

  describe 'mode set' do
    subject { set_modes }

    context 'ref' do
      before { instance.to_s }

      it { is_expected.to eq [:ref_only] }
    end

    context 'keys/dictionary' do
      before { instance.key.to_s }

      it { is_expected.to eq [:ref_only, :dict] }
    end
  end
end
