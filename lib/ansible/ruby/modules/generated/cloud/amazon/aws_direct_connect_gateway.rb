# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates AWS Direct Connect Gateway
      # Deletes AWS Direct Connect Gateway
      # Attaches Virtual Gateways to Direct Connect Gateway
      # Detaches Virtual Gateways to Direct Connect Gateway
      class Aws_direct_connect_gateway < Base
        # @return [:present, :absent, nil] present to ensure resource is created.,absent to remove resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] name of the dxgw to be created or deleted
        attribute :name
        validates :name, type: String

        # @return [Integer] amazon side asn
        attribute :amazon_asn
        validates :amazon_asn, presence: true, type: Integer

        # @return [Object, nil] id of an existing direct connect gateway
        attribute :direct_connect_gateway_id

        # @return [String, nil] vpn gateway id of an existing virtual gateway
        attribute :virtual_gateway_id
        validates :virtual_gateway_id, type: String
      end
    end
  end
end
