# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apstra AOS Blueprint Parameter module let you manage your Blueprint Parameter easily. You can create access, define and delete Blueprint Parameter. The list of Parameters supported is different per Blueprint. The option I(get_param_list) can help you to access the list of supported Parameters for your blueprint. This module is idempotent and support the I(check) mode. It's using the AOS REST API.
      class Aos_blueprint_param < Base
        # @return [String] An existing AOS session as obtained by M(aos_login) module.
        attribute :session
        validates :session, presence: true, type: String

        # @return [String] Blueprint Name or Id as defined in AOS.
        attribute :blueprint
        validates :blueprint, presence: true, type: String

        # @return [String, nil] Name of blueprint parameter, as defined by AOS design template. You can use the option I(get_param_list) to get the complete list of supported parameters for your blueprint.
        attribute :name
        validates :name, type: String

        # @return [Hash, nil] Blueprint parameter value.  This value may be transformed by using the I(param_map) field; used when the the blueprint parameter requires an AOS unique ID value.
        attribute :value
        validates :value, type: Hash

        # @return [Boolean, nil] Get the complete list of supported parameters for this blueprint and the description of those parameters.
        attribute :get_param_list
        validates :get_param_list, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Indicate what is the expected state of the Blueprint Parameter (present or not).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Hash, nil] Defines the aos-pyez collection that will is used to map the user-defined item name into the AOS unique ID value.  For example, if the caller provides an IP address pool I(param_value) called "Server-IpAddrs", then the aos-pyez collection is 'IpPools'. Some I(param_map) are already defined by default like I(logical_device_maps).
        attribute :param_map
        validates :param_map, type: Hash
      end
    end
  end
end
