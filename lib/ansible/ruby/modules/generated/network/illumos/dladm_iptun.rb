# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage IP tunnel interfaces on Solaris/illumos systems.
      class Dladm_iptun < Base
        # @return [String] IP tunnel interface name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] Specifies that the IP tunnel interface is temporary. Temporary IP tunnel interfaces do not persist across reboots.
        attribute :temporary
        validates :temporary, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:ipv4, :ipv6, :"6to4", nil] Specifies the type of tunnel to be created.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:ipv4, :ipv6, :"6to4"], :message=>"%{value} needs to be :ipv4, :ipv6, :\"6to4\""}, allow_nil: true

        # @return [String, nil] Literat IP address or hostname corresponding to the tunnel source.
        attribute :local_address
        validates :local_address, type: String

        # @return [String, nil] Literal IP address or hostname corresponding to the tunnel destination.
        attribute :remote_address
        validates :remote_address, type: String

        # @return [:present, :absent, nil] Create or delete Solaris/illumos VNIC.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
