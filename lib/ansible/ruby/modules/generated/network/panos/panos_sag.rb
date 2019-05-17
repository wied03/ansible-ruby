# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a static address group object in the firewall used for policy rules.
      class Panos_sag < Base
        # @return [Object, nil] API key that can be used instead of I(username)/I(password) credentials.
        attribute :api_key

        # @return [String] name of the dynamic address group
        attribute :sag_name
        validates :sag_name, presence: true, type: String

        # @return [Object] Static filter user by the address group
        attribute :static_match_filter
        validates :static_match_filter, presence: true

        # @return [Object, nil] - The name of the Panorama device group. The group must exist on Panorama. If device group is not defined it is assumed that we are contacting a firewall.\r\n
        attribute :devicegroup

        # @return [String, nil] The purpose / objective of the static Address Group
        attribute :description
        validates :description, type: String

        # @return [Array<String>, String, nil] Tags to be associated with the address group
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] commit if changed
        attribute :commit
        validates :commit, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] The operation to perform Supported values are I(add)/I(list)/I(delete).
        attribute :operation
        validates :operation, presence: true
      end
    end
  end
end
