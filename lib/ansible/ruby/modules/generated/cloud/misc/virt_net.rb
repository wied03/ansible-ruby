# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage I(libvirt) networks.
      class Virt_net < Base
        # @return [String] name of the network being managed. Note that network must be previously defined with xml.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:active, :inactive, :present, :absent, nil] specify which state you want a network to be in. If 'active', network will be started. If 'present', ensure that network is present but do not change its state; if it's missing, you need to specify xml argument. If 'inactive', network will be stopped. If 'undefined' or 'absent', network will be removed from I(libvirt) configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:active, :inactive, :present, :absent], :message=>"%{value} needs to be :active, :inactive, :present, :absent"}, allow_nil: true

        # @return [:define, :create, :start, :stop, :destroy, :undefine, :get_xml, :list_nets, :facts, :info, :status, :modify, nil] in addition to state management, various non-idempotent commands are available. See examples. Modify was added in version 2.1
        attribute :command
        validates :command, expression_inclusion: {:in=>[:define, :create, :start, :stop, :destroy, :undefine, :get_xml, :list_nets, :facts, :info, :status, :modify], :message=>"%{value} needs to be :define, :create, :start, :stop, :destroy, :undefine, :get_xml, :list_nets, :facts, :info, :status, :modify"}, allow_nil: true

        # @return [Symbol, nil] Specify if a given network should be started automatically on system boot.
        attribute :autostart
        validates :autostart, type: Symbol

        # @return [String, nil] libvirt connection uri.
        attribute :uri
        validates :uri, type: String

        # @return [String, nil] XML document used with the define command.
        attribute :xml
        validates :xml, type: String
      end
    end
  end
end
