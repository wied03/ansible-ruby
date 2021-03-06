# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # osx_defaults allows users to read, write, and delete macOS user defaults from Ansible scripts. macOS applications and other programs use the defaults system to record user preferences and other information that must be maintained when the applications aren't running (such as default font for new documents, or the position of an Info panel).
      class Osx_defaults < Base
        # @return [String, nil] The domain is a domain name of the form com.companyname.appname.
        attribute :domain
        validates :domain, type: String

        # @return [String, nil] The host on which the preference should apply. The special value "currentHost" corresponds to the "-currentHost" switch of the defaults commandline tool.
        attribute :host
        validates :host, type: String

        # @return [String] The key of the user preference
        attribute :key
        validates :key, presence: true, type: String

        # @return [:array, :bool, :boolean, :date, :float, :int, :integer, :string, nil] The type of value to write.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:array, :bool, :boolean, :date, :float, :int, :integer, :string], :message=>"%{value} needs to be :array, :bool, :boolean, :date, :float, :int, :integer, :string"}, allow_nil: true

        # @return [:yes, :no, nil] Add new elements to the array for a key which has an array as its value.
        attribute :array_add
        validates :array_add, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Boolean, nil] The value to write. Only required when state = present.
        attribute :value
        validates :value, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] The state of the user defaults
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
