# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove flavors from OpenStack.
      class Os_nova_flavor < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource. When I(state) is 'present', then I(ram), I(vcpus), and I(disk) are all required. There are no default values for those parameters.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Flavor name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Amount of memory, in MB.
        attribute :ram
        validates :ram, type: Integer

        # @return [Integer, nil] Number of virtual CPUs.
        attribute :vcpus
        validates :vcpus, type: Integer

        # @return [Integer, nil] Size of local disk, in GB.
        attribute :disk
        validates :disk, type: Integer

        # @return [Integer, nil] Ephemeral space size, in GB.
        attribute :ephemeral
        validates :ephemeral, type: Integer

        # @return [Integer, nil] Swap space size, in MB.
        attribute :swap
        validates :swap, type: Integer

        # @return [Float, nil] RX/TX factor.
        attribute :rxtx_factor
        validates :rxtx_factor, type: Float

        # @return [:yes, :no, nil] Make flavor accessible to the public.
        attribute :is_public
        validates :is_public, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] ID for the flavor. This is optional as a unique UUID will be assigned if a value is not specified.
        attribute :flavorid
        validates :flavorid, type: String

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone

        # @return [Hash, nil] Metadata dictionary
        attribute :extra_specs
        validates :extra_specs, type: Hash
      end
    end
  end
end
