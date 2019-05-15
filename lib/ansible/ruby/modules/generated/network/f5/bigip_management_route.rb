# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures route settings for the management interface of a BIG-IP.
      class Bigip_management_route < Base
        # @return [String] Specifies the name of the management route.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the management route.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Specifies that the system forwards packets to the destination through the gateway with the specified IP address.
        attribute :gateway
        validates :gateway, type: String

        # @return [String, nil] The subnet and netmask to be used for the route.,To specify that the route is the default route for the system, provide the value C(default).,Only one C(default) entry is allowed.,This parameter cannot be changed after it is set. Therefore, if you do need to change it, it is required that you delete and create a new route.
        attribute :network
        validates :network, type: String

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
