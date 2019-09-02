# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # NETCONF is a network management protocol developed and standardized by the IETF. It is documented in RFC 6241.
      # This module allows the user to fetch configuration and state data from NETCONF enabled network devices.
      class Netconf_get < Base
        # @return [:running, :candidate, :startup, nil] This argument specifies the datastore from which configuration data should be fetched. Valid values are I(running), I(candidate) and I(startup). If the C(source) value is not set both configuration and state information are returned in response from running datastore.
        attribute :source
        validates :source, expression_inclusion: {:in=>[:running, :candidate, :startup], :message=>"%{value} needs to be :running, :candidate, :startup"}, allow_nil: true

        # @return [String, nil] This argument specifies the XML string which acts as a filter to restrict the portions of the data to be are retrieved from the remote device. If this option is not specified entire configuration or state data is returned in result depending on the value of C(source) option. The C(filter) value can be either XML string or XPath, if the filter is in XPath format the NETCONF server running on remote host should support xpath capability else it will result in an error.
        attribute :filter
        validates :filter, type: String

        # @return [:json, :pretty, :xml, nil] Encoding scheme to use when serializing output from the device. The option I(json) will serialize the output as JSON data. If the option value is I(json) it requires jxmlease to be installed on control node. The option I(pretty) is similar to received XML response but is using human readable format (spaces, new lines). The option value I(xml) is similar to received XML response but removes all XML namespaces.
        attribute :display
        validates :display, expression_inclusion: {:in=>[:json, :pretty, :xml], :message=>"%{value} needs to be :json, :pretty, :xml"}, allow_nil: true

        # @return [:never, :always, :"if-supported", nil] Instructs the module to explicitly lock the datastore specified as C(source). If no I(source) is defined, the I(running) datastore will be locked. By setting the option value I(always) is will explicitly lock the datastore mentioned in C(source) option. By setting the option value I(never) it will not lock the C(source) datastore. The value I(if-supported) allows better interworking with NETCONF servers, which do not support the (un)lock operation for all supported datastores.
        attribute :lock
        validates :lock, expression_inclusion: {:in=>[:never, :always, :"if-supported"], :message=>"%{value} needs to be :never, :always, :\"if-supported\""}, allow_nil: true
      end
    end
  end
end
