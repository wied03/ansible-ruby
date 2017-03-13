# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages access list entries for ACLs.
      class Nxos_acl < Base
        # @return [Integer, nil] Sequence number of the entry (ACE).
        attribute :seq
        validates :seq, type: Integer

        # @return [String] Case sensitive name of the access list (ACL).
        attribute :name
        validates :name, presence: true, type: String

        # @return [:permit, :deny, :remark, nil] Action of the ACE.
        attribute :action
        validates :action, inclusion: {:in=>[:permit, :deny, :remark], :message=>"%{value} needs to be :permit, :deny, :remark"}, allow_nil: true

        # @return [Object, nil] If action is set to remark, this is the description.
        attribute :remark

        # @return [String, nil] Port number or protocol (as supported by the switch).
        attribute :proto
        validates :proto, type: String

        # @return [String, nil] Source ip and mask using IP/MASK notation and supports keyword 'any'.
        attribute :src
        validates :src, type: String

        # @return [:any, :eq, :gt, :lt, :neq, :range, nil] Source port operands such as eq, neq, gt, lt, range.
        attribute :src_port_op
        validates :src_port_op, inclusion: {:in=>[:any, :eq, :gt, :lt, :neq, :range], :message=>"%{value} needs to be :any, :eq, :gt, :lt, :neq, :range"}, allow_nil: true

        # @return [Object, nil] Port/protocol and also first (lower) port when using range operand.
        attribute :src_port1

        # @return [Object, nil] Second (end) port when using range operand.
        attribute :src_port2

        # @return [String, nil] Destination ip and mask using IP/MASK notation and supports the keyword 'any'.
        attribute :dest
        validates :dest, type: String

        # @return [:any, :eq, :gt, :lt, :neq, :range, nil] Destination port operands such as eq, neq, gt, lt, range.
        attribute :dest_port_op
        validates :dest_port_op, inclusion: {:in=>[:any, :eq, :gt, :lt, :neq, :range], :message=>"%{value} needs to be :any, :eq, :gt, :lt, :neq, :range"}, allow_nil: true

        # @return [Object, nil] Port/protocol and also first (lower) port when using range operand.
        attribute :dest_port1

        # @return [Object, nil] Second (end) port when using range operand.
        attribute :dest_port2

        # @return [:enable, nil] Log matches against this entry.
        attribute :log
        validates :log, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Match on the URG bit.
        attribute :urg
        validates :urg, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Match on the ACK bit.
        attribute :ack
        validates :ack, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Match on the PSH bit.
        attribute :psh
        validates :psh, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Match on the RST bit.
        attribute :rst
        validates :rst, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Match on the SYN bit.
        attribute :syn
        validates :syn, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Match on the FIN bit.
        attribute :fin
        validates :fin, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Match established connections.
        attribute :established
        validates :established, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [:enable, nil] Check non-initial fragments.
        attribute :fragments
        validates :fragments, inclusion: {:in=>[:enable], :message=>"%{value} needs to be :enable"}, allow_nil: true

        # @return [Object, nil] Name of time-range to apply.
        attribute :time_range, original_name: 'time-range'

        # @return [:critical, :flash, :"flash-override", :immediate, :internet, :network, :priority, :routine, nil] Match packets with given precedence.
        attribute :precedence
        validates :precedence, inclusion: {:in=>[:critical, :flash, :"flash-override", :immediate, :internet, :network, :priority, :routine], :message=>"%{value} needs to be :critical, :flash, :\"flash-override\", :immediate, :internet, :network, :priority, :routine"}, allow_nil: true

        # @return [:af11, :af12, :af13, :af21, :af22, :af23, :af31, :af32, :af33, :af41, :af42, :af43, :cs1, :cs2, :cs3, :cs4, :cs5, :cs6, :cs7, :default, :ef, nil] Match packets with given dscp value.
        attribute :dscp
        validates :dscp, inclusion: {:in=>[:af11, :af12, :af13, :af21, :af22, :af23, :af31, :af32, :af33, :af41, :af42, :af43, :cs1, :cs2, :cs3, :cs4, :cs5, :cs6, :cs7, :default, :ef], :message=>"%{value} needs to be :af11, :af12, :af13, :af21, :af22, :af23, :af31, :af32, :af33, :af41, :af42, :af43, :cs1, :cs2, :cs3, :cs4, :cs5, :cs6, :cs7, :default, :ef"}, allow_nil: true

        # @return [:present, :absent, :delete_acl, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :delete_acl], :message=>"%{value} needs to be :present, :absent, :delete_acl"}, allow_nil: true
      end
    end
  end
end
