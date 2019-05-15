# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # You can wait for a set amount of time C(timeout), this is the default if nothing is specified.
      # Waiting for a port to become available is useful for when services are not immediately available after their init scripts return which is true of certain Java application servers.
      # You can wait for a file to exist or not exist on the filesystem.
      # This module can also be used to wait for a regex match string to be present in a file.
      # You can wait for active connections to be closed before continuing on a local port.
      class Win_wait_for < Base
        # @return [Integer, nil] The maximum number of seconds to wait for a connection to happen before closing and retrying.
        attribute :connect_timeout
        validates :connect_timeout, type: Integer

        # @return [Integer, nil] The number of seconds to wait before starting to poll.
        attribute :delay
        validates :delay, type: Integer

        # @return [Array<String>, String, nil] The list of hosts or IPs to ignore when looking for active TCP connections when C(state=drained).
        attribute :exclude_hosts
        validates :exclude_hosts, type: TypeGeneric.new(String)

        # @return [String, nil] A resolvable hostname or IP address to wait for.,If C(state=drained) then it will only check for connections on the IP specified, you can use '0.0.0.0' to use all host IPs.
        attribute :host
        validates :host, type: String

        # @return [String, nil] The path to a file on the filesystem to check.,If C(state) is present or started then it will wait until the file exists.,If C(state) is absent then it will wait until the file does not exist.
        attribute :path
        validates :path, type: String

        # @return [Integer, nil] The port number to poll on C(host).
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] Can be used to match a string in a file.,If C(state) is present or started then it will wait until the regex matches.,If C(state) is absent then it will wait until the regex does not match.,Defaults to a multiline regex.
        attribute :search_regex
        validates :search_regex, type: String

        # @return [Integer, nil] Number of seconds to sleep between checks.
        attribute :sleep
        validates :sleep, type: Integer

        # @return [:absent, :drained, :present, :started, :stopped, nil] When checking a port, C(started) will ensure the port is open, C(stopped) will check that is it closed and C(drained) will check for active connections.,When checking for a file or a search string C(present) or C(started) will ensure that the file or string is present, C(absent) will check that the file or search string is absent or removed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :drained, :present, :started, :stopped], :message=>"%{value} needs to be :absent, :drained, :present, :started, :stopped"}, allow_nil: true

        # @return [Integer, nil] The maximum number of seconds to wait for.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
