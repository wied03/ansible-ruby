# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Tap external Homebrew repositories.
      class Homebrew_tap < Base
        # @return [Array<String>, String] The GitHub user/organization repository to tap.
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] The optional git URL of the repository to tap. The URL is not assumed to be on GitHub, and the protocol doesn't have to be HTTP. Any location and protocol that git can handle is fine.,I(name) option may not be a list of multiple taps (but a single tap instead) when this option is provided.
        attribute :url
        validates :url, type: String

        # @return [:present, :absent, nil] state of the repository.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
