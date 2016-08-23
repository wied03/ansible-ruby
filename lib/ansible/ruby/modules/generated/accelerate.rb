# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Accelerate < Base
        # @return [Fixnum] TCP port for the socket connection
        attribute :port
        validates :port, type: Fixnum

        # @return [Fixnum] The number of seconds the socket will wait for data. If none is received when the timeout value is reached, the connection will be closed.
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [Fixnum] The I(accelerate) listener daemon is started on nodes and will stay around for this number of minutes before turning itself off.
        attribute :minutes
        validates :minutes, type: Fixnum

        # @return [Object] The listener daemon on the remote host will bind to the ipv6 localhost socket if this parameter is set to true.
        attribute :ipv6

        # @return [Object] When enabled, the daemon will open a local socket file which can be used by future daemon executions to upload a new key to the already running daemon, so that multiple users can connect using different keys. This access still requires an ssh connection as the uid for which the daemon is currently running.
        attribute :multi_key
      end
    end
  end
end
