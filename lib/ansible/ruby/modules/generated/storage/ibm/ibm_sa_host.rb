# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module adds hosts to or removes them from IBM Spectrum Accelerate storage systems.
      class Ibm_sa_host < Base
        # @return [String] Host name.
        attribute :host
        validates :host, presence: true, type: String

        # @return [:present, :absent] Host state.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] The name of the cluster to include the host.
        attribute :cluster

        # @return [Object, nil] The domains the cluster will be attached to. To include more than one domain, separate domain names with commas. To include all existing domains, use an asterisk ("*").
        attribute :domain

        # @return [Object, nil] The host's CHAP name identifier
        attribute :iscsi_chap_name

        # @return [Object, nil] The password of the initiator used to authenticate to the system when CHAP is enable
        attribute :iscsi_chap_secret
      end
    end
  end
end
