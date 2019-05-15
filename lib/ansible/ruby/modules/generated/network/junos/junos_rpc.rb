# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends a request to the remote device running JUNOS to execute the specified RPC using the NetConf transport.  The reply is then returned to the playbook in the C(xml) key.  If an alternate output format is requested, the reply is transformed to the requested output.
      class Junos_rpc < Base
        # @return [String] The C(rpc) argument specifies the RPC call to send to the remote devices to be executed.  The RPC Reply message is parsed and the contents are returned to the playbook.
        attribute :rpc
        validates :rpc, presence: true, type: String

        # @return [Hash, nil] The C(args) argument provides a set of arguments for the RPC call and are encoded in the request message.  This argument accepts a set of key=value arguments.
        attribute :args
        validates :args, type: Hash

        # @return [Hash, nil] The C(attrs) arguments defines a list of attributes and their values to set for the RPC call. This accepts a dictionary of key-values.
        attribute :attrs
        validates :attrs, type: Hash

        # @return [String, nil] The C(output) argument specifies the desired output of the return data.  This argument accepts one of C(xml), C(text), or C(json).  For C(json), the JUNOS device must be running a version of software that supports native JSON output.
        attribute :output
        validates :output, type: String
      end
    end
  end
end
