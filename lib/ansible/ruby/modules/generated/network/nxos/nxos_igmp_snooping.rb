# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages IGMP snooping global configuration.
      class Nxos_igmp_snooping < Base
        # @return [Symbol, nil] Enables/disables IGMP snooping on the switch.
        attribute :snooping
        validates :snooping, type: Symbol

        # @return [String, nil] Group membership timeout value for all VLANs on the device. Accepted values are integer in range 1-10080, I(never) and I(default).
        attribute :group_timeout
        validates :group_timeout, type: String

        # @return [Symbol, nil] Global link-local groups suppression.
        attribute :link_local_grp_supp
        validates :link_local_grp_supp, type: Symbol

        # @return [Symbol, nil] Global IGMPv1/IGMPv2 Report Suppression.
        attribute :report_supp
        validates :report_supp, type: Symbol

        # @return [Symbol, nil] Global IGMPv3 Report Suppression and Proxy Reporting.
        attribute :v3_report_supp
        validates :v3_report_supp, type: Symbol

        # @return [:present, :default, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :default], :message=>"%{value} needs to be :present, :default"}, allow_nil: true
      end
    end
  end
end
