# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # You can wait for a set amount of time C(timeout), this is the default if nothing is specified.
      # Waiting for a port to become available is useful for when services are not immediately available after their init scripts return which is true of certain Java application servers. It is also useful when starting guests with the M(virt) module and needing to pause until they are ready.
      # This module can also be used to wait for a regex match a string to be present in a file.
      # In 1.6 and later, this module can also be used to wait for a file to be available or absent on the filesystem.
      # In 1.8 and later, this module can also be used to wait for active connections to be closed before continuing, useful if a node is being rotated out of a load balancer pool.
      class Wait_for < Base
        # @return [String, nil] A resolvable hostname or IP address to wait for
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] maximum number of seconds to wait for
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Integer, nil] maximum number of seconds to wait for a connection to happen before closing and retrying
        attribute :connect_timeout
        validates :connect_timeout, type: Integer

        # @return [Integer, nil] number of seconds to wait before starting to poll
        attribute :delay
        validates :delay, type: Integer

        # @return [Integer, String, nil] port number to poll
        attribute :port
        validates :port, type: MultipleTypes.new(Integer, String)

        # @return [String, nil] The list of tcp connection states which are counted as active connections
        attribute :active_connection_states
        validates :active_connection_states, type: String

        # @return [:present, :started, :stopped, :absent, :drained, nil] either C(present), C(started), or C(stopped), C(absent), or C(drained),When checking a port C(started) will ensure the port is open, C(stopped) will check that it is closed, C(drained) will check for active connections,When checking for a file or a search string C(present) or C(started) will ensure that the file or string is present before continuing, C(absent) will check that file is absent or removed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :started, :stopped, :absent, :drained], :message=>"%{value} needs to be :present, :started, :stopped, :absent, :drained"}, allow_nil: true

        # @return [String, nil] path to a file on the filesytem that must exist before continuing
        attribute :path
        validates :path, type: String

        # @return [String, nil] Can be used to match a string in either a file or a socket connection. Defaults to a multiline regex.
        attribute :search_regex
        validates :search_regex, type: String

        # @return [Array<String>, String, nil] list of hosts or IPs to ignore when looking for active TCP connections for C(drained) state
        attribute :exclude_hosts
        validates :exclude_hosts, type: TypeGeneric.new(String)

        # @return [Integer, nil] Number of seconds to sleep between checks, before 2.3 this was hardcoded to 1 second.
        attribute :sleep
        validates :sleep, type: Integer
      end
    end
  end
end
