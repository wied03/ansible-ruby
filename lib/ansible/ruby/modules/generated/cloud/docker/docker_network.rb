# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/remove Docker networks and connect containers to them.
      # Performs largely the same function as the "docker network" CLI subcommand.
      class Docker_network < Base
        # @return [String] Name of the network to operate on.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String, nil] List of container names or container IDs to connect to a network.
        attribute :connected
        validates :connected, type: TypeGeneric.new(String)

        # @return [String, nil] Specify the type of network. Docker provides bridge and overlay drivers, but 3rd party drivers can also be used.
        attribute :driver
        validates :driver, type: String

        # @return [Hash, nil] Dictionary of network settings. Consult docker docs for valid options and values.
        attribute :driver_options
        validates :driver_options, type: Hash

        # @return [Boolean, nil] With state I(absent) forces disconnecting all containers from the network prior to deleting the network. With state I(present) will disconnect all containers, delete the network and re-create the network.  This option is required if you have changed the IPAM or driver options and want an existing network to be updated to use the new options.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] By default the connected list is canonical, meaning containers not on the list are removed from the network. Use C(appends) to leave existing containers connected.
        attribute :appends
        validates :appends, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Specify an IPAM driver.
        attribute :ipam_driver

        # @return [Hash, nil] Dictionary of IPAM options.
        attribute :ipam_options
        validates :ipam_options, type: Hash

        # @return [:absent, :present, nil] I(absent) deletes the network. If a network has connected containers, it cannot be deleted. Use the C(force) option to disconnect all containers and delete the network.,I(present) creates the network, if it does not already exist with the specified parameters, and connects the list of containers provided via the connected parameter. Containers not on the list will be disconnected. An empty list will leave no containers connected to the network. Use the C(appends) option to leave existing containers connected. Use the C(force) options to force re-creation of the network.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
