# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to manipulate motd on cDOT
      class Na_ontap_motd < Base
        # @return [:present, :absent, nil] If C(state=present) sets MOTD given in I(message) C(state=absent) removes it.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] MOTD Text message, required when C(state=present).
        attribute :message
        validates :message, type: String

        # @return [String] The name of the SVM motd should be set for.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [Boolean, nil] Set to I(false) if Cluster-level Message of the Day should not be shown
        attribute :show_cluster_motd
        validates :show_cluster_motd, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
