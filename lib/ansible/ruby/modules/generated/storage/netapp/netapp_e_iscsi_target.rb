# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure the settings of an E-Series iSCSI target
      class Netapp_e_iscsi_target < Base
        # @return [String, nil] The name/alias to assign to the iSCSI target.,This alias is often used by the initiator software in order to make an iSCSI target easier to identify.
        attribute :name
        validates :name, type: String

        # @return [Boolean, nil] Enable ICMP ping responses from the configured iSCSI ports.
        attribute :ping
        validates :ping, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Enable Challenge-Handshake Authentication Protocol (CHAP), utilizing this value as the password.,When this value is specified, we will always trigger an update (changed=True). We have no way of verifying whether or not the password has changed.,The chap secret may only use ascii characters with values between 32 and 126 decimal.,The chap secret must be no less than 12 characters, but no more than 16 characters in length.
        attribute :chap_secret

        # @return [Boolean, nil] When an initiator initiates a discovery session to an initiator port, it is considered an unnamed discovery session if the iSCSI target iqn is not specified in the request.,This option may be disabled to increase security if desired.
        attribute :unnamed_discovery
        validates :unnamed_discovery, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] A local path (on the Ansible controller), to a file to be used for debug logging.
        attribute :log_path
      end
    end
  end
end
