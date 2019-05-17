# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, update, start, stop, and reboot a 1&1 Host server. When the server is created it can optionally wait for it to be 'running' before returning.
      class Oneandone_server < Base
        # @return [:present, :absent, :running, :stopped, nil] Define a server's state to create, remove, start or stop it.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :running, :stopped], :message=>"%{value} needs to be :present, :absent, :running, :stopped"}, allow_nil: true

        # @return [String] Authenticating API token provided by 1&1. Overrides the ONEANDONE_AUTH_TOKEN environement variable.
        attribute :auth_token
        validates :auth_token, presence: true, type: String

        # @return [Object, nil] Custom API URL. Overrides the ONEANDONE_API_URL environement variable.
        attribute :api_url

        # @return [:US, :ES, :DE, :GB, nil] The datacenter location.
        attribute :datacenter
        validates :datacenter, inclusion: {:in=>[:US, :ES, :DE, :GB], :message=>"%{value} needs to be :US, :ES, :DE, :GB"}, allow_nil: true

        # @return [String, nil] The hostname or ID of the server. Only used when state is 'present'.
        attribute :hostname
        validates :hostname, type: String

        # @return [Object, nil] The description of the server.
        attribute :description

        # @return [String, nil] The operating system name or ID for the server. It is required only for 'present' state.
        attribute :appliance
        validates :appliance, type: String

        # @return [:S, :M, :L, :XL, :XXL, :"3XL", :"4XL", :"5XL"] The instance size name or ID of the server. It is required only for 'present' state, and it is mutually exclusive with vcore, cores_per_processor, ram, and hdds parameters.
        attribute :fixed_instance_size
        validates :fixed_instance_size, presence: true, inclusion: {:in=>[:S, :M, :L, :XL, :XXL, :"3XL", :"4XL", :"5XL"], :message=>"%{value} needs to be :S, :M, :L, :XL, :XXL, :\"3XL\", :\"4XL\", :\"5XL\""}

        # @return [Integer, nil] The total number of processors. It must be provided with cores_per_processor, ram, and hdds parameters.
        attribute :vcore
        validates :vcore, type: Integer

        # @return [Integer, nil] The number of cores per processor. It must be provided with vcore, ram, and hdds parameters.
        attribute :cores_per_processor
        validates :cores_per_processor, type: Integer

        # @return [Float, nil] The amount of RAM memory. It must be provided with with vcore, cores_per_processor, and hdds parameters.
        attribute :ram
        validates :ram, type: Float

        # @return [Array<Hash>, Hash, nil] A list of hard disks with nested "size" and "is_main" properties. It must be provided with vcore, cores_per_processor, and ram parameters.
        attribute :hdds
        validates :hdds, type: TypeGeneric.new(Hash)

        # @return [Object, nil] The private network name or ID.
        attribute :private_network

        # @return [Object, nil] The firewall policy name or ID.
        attribute :firewall_policy

        # @return [Object, nil] The load balancer name or ID.
        attribute :load_balancer

        # @return [Object, nil] The monitoring policy name or ID.
        attribute :monitoring_policy

        # @return [String, nil] Server identifier (ID or hostname). It is required for all states except 'running' and 'present'.
        attribute :server
        validates :server, type: String

        # @return [Integer, nil] The number of servers to create.
        attribute :count
        validates :count, type: Integer

        # @return [String, nil] User's public SSH key (contents, not path).
        attribute :ssh_key
        validates :ssh_key, type: String

        # @return [:cloud, :baremetal, :k8s_node, nil] The type of server to be built.
        attribute :server_type
        validates :server_type, inclusion: {:in=>[:cloud, :baremetal, :k8s_node], :message=>"%{value} needs to be :cloud, :baremetal, :k8s_node"}, allow_nil: true

        # @return [:yes, :no, nil] Wait for the server to be in state 'running' before returning. Also used for delete operation (set to 'false' if you don't want to wait for each individual server to be deleted before moving on with other tasks.)
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Integer, nil] Defines the number of seconds to wait when using the wait_for methods
        attribute :wait_interval
        validates :wait_interval, type: Integer

        # @return [:yes, :no, nil] When creating multiple servers at once, whether to differentiate hostnames by appending a count after them or substituting the count where there is a %02d or %03d in the hostname string.
        attribute :auto_increment
        validates :auto_increment, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
