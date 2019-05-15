# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove a Big Cloud Fabric switch.
      class Bcf_switch < Base
        # @return [String] The name of the switch.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:spine, :leaf] Fabric role of the switch.
        attribute :fabric_role
        validates :fabric_role, presence: true, inclusion: {:in=>[:spine, :leaf], :message=>"%{value} needs to be :spine, :leaf"}

        # @return [String, nil] The leaf group of the switch if the switch is a leaf.
        attribute :leaf_group
        validates :leaf_group, type: String

        # @return [String] The MAC address of the switch.
        attribute :mac
        validates :mac, presence: true, type: String

        # @return [:present, :absent, nil] Whether the switch should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The controller IP address.
        attribute :controller
        validates :controller, presence: true, type: String

        # @return [Boolean, nil] If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Big Cloud Fabric access token. If this isn't set then the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.
        attribute :access_token
      end
    end
  end
end
