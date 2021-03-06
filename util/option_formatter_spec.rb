# frozen_string_literal: true

# See LICENSE.txt for license
require 'spec_helper'
require_relative './option_formatter'
require_relative './parser/option_data'

describe Ansible::Ruby::OptionFormatter do
  describe '::format' do
    subject do
      # match the expected multiline string stuff
      Ansible::Ruby::OptionFormatter.format(option_data).join("\n") + "\n"
    end

    let(:required) { false }
    let(:types) { [] }
    let(:choices) { nil }
    let(:attribute) { 'the_attribute' }

    let(:option_data) do
      Ansible::Ruby::Parser::OptionData.new name: attribute,
                                            description: %w[abc],
                                            required: required,
                                            types: types,
                                            choices: choices
    end

    context 'no validations' do
      it do
        is_expected.to eq <<~RUBY
          # @return [Object, nil] abc
          attribute :the_attribute
        RUBY
      end
    end

    context 'required' do
      let(:required) { true }

      it do
        is_expected.to eq <<~RUBY
          # @return [Object] abc
          attribute :the_attribute
          validates :the_attribute, presence: true
        RUBY
      end
    end

    context 'choices' do
      context 'required' do
        let(:required) { true }
        let(:types) { [String] }
        let(:choices) { %i[present absent] }

        it do
          is_expected.to eq <<~RUBY
            # @return [:present, :absent] abc
            attribute :the_attribute
            validates :the_attribute, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
          RUBY
        end
      end

      context 'not required' do
        let(:required) { false }
        let(:types) { [String] }
        let(:choices) { %i[present absent] }

        it do
          is_expected.to eq <<~RUBY
            # @return [:present, :absent, nil] abc
            attribute :the_attribute
            validates :the_attribute, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
          RUBY
        end
      end

      context 'boolean' do
        let(:types) { [TrueClass, FalseClass] }
        let(:choices) { [true, false] }

        it do
          is_expected.to eq <<~RUBY
            # @return [Boolean, nil] abc
            attribute :the_attribute
            validates :the_attribute, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
          RUBY
        end
      end

      context 'different types' do
        let(:types) { [] }
        let(:choices) { [1, :abc] }

        it do
          is_expected.to eq <<~RUBY
            # @return [1, :abc, nil] abc
            attribute :the_attribute
            validates :the_attribute, expression_inclusion: {:in=>[1, :abc], :message=>"%{value} needs to be 1, :abc"}, allow_nil: true
          RUBY
        end
      end
    end

    context 'non symbol friendly attribute' do
      let(:attribute) { 'no-recommends' }

      it do
        is_expected.to eq <<~RUBY
          # @return [Object, nil] abc
          attribute :no_recommends, original_name: 'no-recommends'
        RUBY
      end
    end

    context 'array' do
      let(:types) { [TypeGeneric.new(Integer)] }

      it do
        is_expected.to eq <<~RUBY
          # @return [Array<Integer>, Integer, nil] abc
          attribute :the_attribute
          validates :the_attribute, type: TypeGeneric.new(Integer)
        RUBY
      end
    end

    context 'array with multiple types' do
      let(:types) { [TypeGeneric.new(String, Hash)] }

      it do
        is_expected.to eq <<~RUBY
          # @return [Array<String>, String, nil] abc
          attribute :the_attribute
          validates :the_attribute, type: TypeGeneric.new(String, Hash)
        RUBY
      end
    end
  end
end
