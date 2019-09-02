# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages NetStream template configuration on HUAWEI CloudEngine switches.
      class Ce_netstream_template < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:ip, :vxlan] Configure the type of netstream record.
        attribute :type
        validates :type, presence: true, expression_inclusion: {:in=>[:ip, :vxlan], :message=>"%{value} needs to be :ip, :vxlan"}

        # @return [Object, nil] Configure the name of netstream record. The value is a string of 1 to 32 case-insensitive characters.
        attribute :record_name

        # @return [:"destination-address", :"destination-port", :tos, :protocol, :"source-address", :"source-port", nil] Configure flexible flow statistics template keywords.
        attribute :match
        validates :match, expression_inclusion: {:in=>[:"destination-address", :"destination-port", :tos, :protocol, :"source-address", :"source-port"], :message=>"%{value} needs to be :\"destination-address\", :\"destination-port\", :tos, :protocol, :\"source-address\", :\"source-port\""}, allow_nil: true

        # @return [:bytes, :packets, nil] Configure the number of packets and bytes that are included in the flexible flow statistics sent to NSC.
        attribute :collect_counter
        validates :collect_counter, expression_inclusion: {:in=>[:bytes, :packets], :message=>"%{value} needs to be :bytes, :packets"}, allow_nil: true

        # @return [:input, :output, nil] Configure the input or output interface that are included in the flexible flow statistics sent to NSC.
        attribute :collect_interface
        validates :collect_interface, expression_inclusion: {:in=>[:input, :output], :message=>"%{value} needs to be :input, :output"}, allow_nil: true

        # @return [Object, nil] Configure the description of netstream record. The value is a string of 1 to 80 case-insensitive characters.
        attribute :description
      end
    end
  end
end
