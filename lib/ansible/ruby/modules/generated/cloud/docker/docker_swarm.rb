# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a new Swarm cluster.
      # Add/Remove nodes or managers to an existing cluster.
      class Docker_swarm < Base
        # @return [String, nil] Externally reachable address advertised to other nodes.,This can either be an address/port combination in the form C(192.168.1.1:4567), or an interface followed by a port number, like C(eth0:4567).,If the port number is omitted, the port number from the listen address is used.,If C(advertise_addr) is not specified, it will be automatically detected when possible.
        attribute :advertise_addr
        validates :advertise_addr, type: String

        # @return [String, nil] Listen address used for inter-manager communication.,This can either be an address/port combination in the form C(192.168.1.1:4567), or an interface followed by a port number, like C(eth0:4567).,If the port number is omitted, the default swarm listening port is used.
        attribute :listen_addr
        validates :listen_addr, type: String

        # @return [String, nil] Use with state C(present) to force creating a new Swarm, even if already part of one.,Use with state C(absent) to Leave the swarm even if this node is a manager.
        attribute :force
        validates :force, type: String

        # @return [:present, :join, :absent, :remove, :inspect] Set to C(present), to create/update a new cluster.,Set to C(join), to join an existing cluster.,Set to C(absent), to leave an existing cluster.,Set to C(remove), to remove an absent node from the cluster.,Set to C(inspect) to display swarm informations.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :join, :absent, :remove, :inspect], :message=>"%{value} needs to be :present, :join, :absent, :remove, :inspect"}

        # @return [String, nil] Swarm id of the node to remove.,Used with I(state=remove).
        attribute :node_id
        validates :node_id, type: String

        # @return [String, nil] Swarm token used to join a swarm cluster.,Used with I(state=join).
        attribute :join_token
        validates :join_token, type: String

        # @return [Array<String>, String, nil] Remote address of a manager to connect to.,Used with I(state=join).
        attribute :remote_addrs
        validates :remote_addrs, type: TypeGeneric.new(String)

        # @return [Object, nil] Maximum number of tasks history stored.,Docker default value is C(5).
        attribute :task_history_retention_limit

        # @return [Object, nil] Number of logs entries between snapshot.,Docker default value is C(10000).
        attribute :snapshot_interval

        # @return [Object, nil] Number of snapshots to keep beyond the current snapshot.,Docker default value is C(0).
        attribute :keep_old_snapshots

        # @return [Object, nil] Number of log entries to keep around to sync up slow followers after a snapshot is created.
        attribute :log_entries_for_slow_followers

        # @return [Object, nil] Amount of ticks (in seconds) between each heartbeat.,Docker default value is C(1s).
        attribute :heartbeat_tick

        # @return [Integer, nil] Amount of ticks (in seconds) needed without a leader to trigger a new election.,Docker default value is C(10s).
        attribute :election_tick
        validates :election_tick, type: Integer

        # @return [Object, nil] The delay for an agent to send a heartbeat to the dispatcher.,Docker default value is C(5s).
        attribute :dispatcher_heartbeat_period

        # @return [Object, nil] Automatic expiry for nodes certificates.,Docker default value is C(3months).
        attribute :node_cert_expiry

        # @return [Object, nil] The name of the swarm.
        attribute :name

        # @return [Object, nil] User-defined key/value metadata.
        attribute :labels

        # @return [Object, nil] The desired signing CA certificate for all swarm node TLS leaf certificates, in PEM format.
        attribute :signing_ca_cert

        # @return [Object, nil] The desired signing CA key for all swarm node TLS leaf certificates, in PEM format.
        attribute :signing_ca_key

        # @return [Object, nil] An integer whose purpose is to force swarm to generate a new signing CA certificate and key, if none have been specified.,Docker default value is C(0).
        attribute :ca_force_rotate

        # @return [Object, nil] If set, generate a key and use it to lock data stored on the managers.,Docker default value is C(no).
        attribute :autolock_managers

        # @return [String, nil] Rotate the worker join token.
        attribute :rotate_worker_token
        validates :rotate_worker_token, type: String

        # @return [String, nil] Rotate the manager join token.
        attribute :rotate_manager_token
        validates :rotate_manager_token, type: String
      end
    end
  end
end
