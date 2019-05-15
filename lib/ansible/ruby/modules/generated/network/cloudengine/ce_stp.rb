# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages STP configurations on HUAWEI CloudEngine switches.
      class Ce_stp < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:stp, :rstp, :mstp, nil] Set an operation mode for the current MSTP process. The mode can be STP, RSTP, or MSTP.
        attribute :stp_mode
        validates :stp_mode, inclusion: {:in=>[:stp, :rstp, :mstp], :message=>"%{value} needs to be :stp, :rstp, :mstp"}, allow_nil: true

        # @return [:enable, :disable, nil] Enable or disable STP on a switch.
        attribute :stp_enable
        validates :stp_enable, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:fast, :normal, nil] STP convergence mode. Fast means set STP aging mode to Fast. Normal means set STP aging mode to Normal.
        attribute :stp_converge
        validates :stp_converge, inclusion: {:in=>[:fast, :normal], :message=>"%{value} needs to be :fast, :normal"}, allow_nil: true

        # @return [:enable, :disable, nil] Configure BPDU protection on an edge port. This function prevents network flapping caused by attack packets.
        attribute :bpdu_protection
        validates :bpdu_protection, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Configure the TC BPDU protection function for an MSTP process.
        attribute :tc_protection
        validates :tc_protection, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Set the time the MSTP device takes to handle the maximum number of TC BPDUs and immediately refresh forwarding entries. The value is an integer ranging from 1 to 600, in seconds.
        attribute :tc_protection_interval

        # @return [Object, nil] Set the maximum number of TC BPDUs that the MSTP can handle. The value is an integer ranging from 1 to 255. The default value is 1 on the switch.
        attribute :tc_protection_threshold

        # @return [Object, nil] Interface name. If the value is C(all), will apply configuration to all interfaces. if the value is a special name, only support input the full name.
        attribute :interface

        # @return [:enable, :disable, nil] Set the current port as an edge port.
        attribute :edged_port
        validates :edged_port, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Specify a port as a BPDU filter port.
        attribute :bpdu_filter
        validates :bpdu_filter, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Set the path cost of the current port. The default instance is 0.
        attribute :cost

        # @return [:enable, :disable, nil] Enable root protection on the current port.
        attribute :root_protection
        validates :root_protection, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Enable loop protection on the current port.
        attribute :loop_protection
        validates :loop_protection, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true
      end
    end
  end
end
