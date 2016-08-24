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
    let(:flat_array) { nil }

    let(:option_data) do
      Ansible::Ruby::Parser::OptionData.new name: 'the_attribute',
                                            description: %w(abc),
                                            required: required,
                                            types: types,
                                            flat_array: flat_array,
                                            choices: choices
    end

    context 'no validations' do
      it do
        is_expected.to eq <<RUBY
# @return [Object, nil] abc
attribute :the_attribute
RUBY
      end
    end

    context 'required' do
      let(:required) { true }

      it do
        is_expected.to eq <<RUBY
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
        let(:choices) { [:present, :absent] }

        it do
          is_expected.to eq <<RUBY
# @return [:present, :absent] abc
attribute :the_attribute
validates :the_attribute, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
RUBY
        end
      end

      context 'not required' do
        let(:required) { false }
        let(:types) { [String] }
        let(:choices) { [:present, :absent] }

        it do
          is_expected.to eq <<RUBY
# @return [:present, :absent, nil] abc
attribute :the_attribute
validates :the_attribute, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
RUBY
        end
      end

      context 'boolean' do
        let(:types) { [TrueClass, FalseClass] }
        let(:choices) { [true, false] }

        it do
          is_expected.to eq <<RUBY
# @return [Boolean, nil] abc
attribute :the_attribute
validates :the_attribute, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
RUBY
        end
      end

      context 'different types' do
        let(:types) { [] }
        let(:choices) { [1, :abc] }

        it do
          is_expected.to eq <<RUBY
# @return [1, :abc, nil] abc
attribute :the_attribute
validates :the_attribute, inclusion: {:in=>[1, :abc], :message=>"%{value} needs to be 1, :abc"}, allow_nil: true
RUBY
        end
      end
    end

    context 'non symbol friendly attribute' do
      let(:option_data) do
        Ansible::Ruby::Parser::OptionData.new name: 'no-recommends',
                                              description: %w(abc),
                                              required: false,
                                              types: [String],
                                              flat_array: nil,
                                              choices: nil
      end

      it do
        is_expected.to eq <<RUBY
# @return [String, nil] abc
attribute :no_recommends, original_name: 'no-recommends'
validates :no_recommends, type: String
RUBY
      end
    end

    context 'array' do
      let(:types) { [TypeGeneric.new(Integer)] }

      it do
        is_expected.to eq <<RUBY
# @return [Array<Integer>, Integer, nil] abc
attribute :the_attribute
validates :the_attribute, type: TypeGeneric.new(Integer)
RUBY
      end
    end

    context 'flat array' do
      let(:types) { [TypeGeneric.new(Integer)] }
      let(:flat_array) { [123, 456] }

      it do
        is_expected.to eq <<RUBY
# @return [Array<Integer>, Integer, nil] abc
attribute :the_attribute, flat_array: true
validates :the_attribute, type: TypeGeneric.new(Integer)
RUBY
      end
    end
  end
end
