# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, enable, disable and remove CloudStack VPC offerings.
      class Cs_vpc_offering < Base
        # @return [String] The name of the vpc offering
        attribute :name
        validates :name, presence: true, type: String

        # @return [:enabled, :present, :disabled, :absent, nil] State of the vpc offering.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:enabled, :present, :disabled, :absent], :message=>"%{value} needs to be :enabled, :present, :disabled, :absent"}, allow_nil: true

        # @return [String, nil] Display text of the vpc offerings
        attribute :display_text
        validates :display_text, type: String

        # @return [Object, nil] Desired service capabilities as part of vpc offering.
        attribute :service_capabilities

        # @return [Object, nil] The name or ID of the service offering for the VPC router appliance.
        attribute :service_offering

        # @return [Array<String>, String, nil] Services supported by the vpc offering
        attribute :supported_services
        validates :supported_services, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] provider to service mapping. If not specified, the provider for the service will be mapped to the default provider on the physical network
        attribute :service_providers
        validates :service_providers, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
