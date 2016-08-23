# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_nova_flavor < Base
        # @return [String] Indicate desired state of the resource. When I(state) is 'present', then I(ram), I(vcpus), and I(disk) are all required. There are no default values for those parameters.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Flavor name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Amount of memory, in MB.
        attribute :ram
        validates :ram, type: String

        # @return [String] Number of virtual CPUs.
        attribute :vcpus
        validates :vcpus, type: String

        # @return [String] Size of local disk, in GB.
        attribute :disk
        validates :disk, type: String

        # @return [Fixnum] Ephemeral space size, in GB.
        attribute :ephemeral
        validates :ephemeral, type: Fixnum

        # @return [Fixnum] Swap space size, in MB.
        attribute :swap
        validates :swap, type: Fixnum

        # @return [Float] RX/TX factor.
        attribute :rxtx_factor
        validates :rxtx_factor, type: Float

        # @return [TrueClass] Make flavor accessible to the public.
        attribute :is_public
        validates :is_public, type: TrueClass

        # @return [String] ID for the flavor. This is optional as a unique UUID will be assigned if a value is not specified.
        attribute :flavorid
        validates :flavorid, type: String
      end
    end
  end
end
