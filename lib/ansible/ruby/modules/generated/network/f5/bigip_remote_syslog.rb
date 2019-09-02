# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manipulate remote syslog settings on a BIG-IP.
      class Bigip_remote_syslog < Base
        # @return [String] Specifies the IP address, or hostname, for the remote system to which the system sends log messages.
        attribute :remote_host
        validates :remote_host, presence: true, type: String

        # @return [Integer, nil] Specifies the port that the system uses to send messages to the remote logging server. When creating a remote syslog, if this parameter is not specified, the default value C(514) is used.
        attribute :remote_port
        validates :remote_port, type: Integer

        # @return [Object, nil] Specifies the local IP address of the system that is logging. To provide no local IP, specify the value C(none). When creating a remote syslog, if this parameter is not specified, the default value C(none) is used.
        attribute :local_ip

        # @return [:absent, :present, nil] When C(present), guarantees that the remote syslog exists with the provided attributes.,When C(absent), removes the remote syslog from the system.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
