# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used for calling any resources defined in Avi REST API. U(https://avinetworks.com/)
      # This module is useful for invoking HTTP Patch methods and accessing resources that do not have an REST object associated with them.
      class Avi_gslbservice_patch_member < Base
        # @return [Hash, nil] HTTP body of GSLB Service Member in YAML or JSON format.
        attribute :data
        validates :data, type: Hash

        # @return [Object, nil] Query parameters passed to the HTTP API.
        attribute :params

        # @return [String] Name of the GSLB Service
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] The state that should be applied to the member. Member is,identified using field member.ip.addr.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
