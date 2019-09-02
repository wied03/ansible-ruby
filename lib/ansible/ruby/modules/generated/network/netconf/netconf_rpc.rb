# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # NETCONF is a network management protocol developed and standardized by the IETF. It is documented in RFC 6241.
      # This module allows the user to execute NETCONF RPC requests as defined by IETF RFC standards as well as proprietary requests.
      class Netconf_rpc < Base
        # @return [String, nil] This argument specifies the request (name of the operation) to be executed on the remote NETCONF enabled device.
        attribute :rpc
        validates :rpc, type: String

        # @return [String, nil] NETCONF operations not defined in rfc6241 typically require the appropriate XML namespace to be set. In the case the I(request) option is not already provided in XML format, the namespace can be defined by the I(xmlns) option.
        attribute :xmlns
        validates :xmlns, type: String

        # @return [Hash, String, nil] This argument specifies the optional request content (all RPC attributes). The I(content) value can either be provided as XML formatted string or as dictionary.
        attribute :content
        validates :content, type: MultipleTypes.new(Hash, String)

        # @return [:json, :pretty, :xml, nil] Encoding scheme to use when serializing output from the device. The option I(json) will serialize the output as JSON data. If the option value is I(json) it requires jxmlease to be installed on control node. The option I(pretty) is similar to received XML response but is using human readable format (spaces, new lines). The option value I(xml) is similar to received XML response but removes all XML namespaces.
        attribute :display
        validates :display, expression_inclusion: {:in=>[:json, :pretty, :xml], :message=>"%{value} needs to be :json, :pretty, :xml"}, allow_nil: true
      end
    end
  end
end
