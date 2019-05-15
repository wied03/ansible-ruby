# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage content switching actions
      # This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance
      class Netscaler_cs_action < Base
        # @return [String, nil] Name for the content switching action. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters. Can be changed after the content switching action is created.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Name of the load balancing virtual server to which the content is switched.
        attribute :targetlbvserver
        validates :targetlbvserver, type: String

        # @return [Object, nil] Name of the VPN virtual server to which the content is switched.
        attribute :targetvserver

        # @return [Object, nil] Information about this content switching action.
        attribute :targetvserverexpr

        # @return [Object, nil] Comments associated with this cs action.
        attribute :comment
      end
    end
  end
end
