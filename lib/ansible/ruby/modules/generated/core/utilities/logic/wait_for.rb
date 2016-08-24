# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

        # @return [String, nil] port number to poll
        attribute :port
        validates :port, type: String

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
      end
    end
  end
end
