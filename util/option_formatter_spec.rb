# See LICENSE.txt for license
require 'spec_helper'
require_relative './option_formatter'
require_relative './parser/option_data'

describe Ansible::Ruby::OptionFormatter do
  describe '::format' do
    subject do
      Ansible::Ruby::OptionFormatter.format(option_data).join("\n") + "\n"
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
  end
end
