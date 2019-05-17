# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage I(libvirt) storage pools.
      class Virt_pool < Base
        # @return [String, nil] name of the storage pool being managed. Note that pool must be previously defined with xml.
        attribute :name
        validates :name, type: String

        # @return [:active, :inactive, :present, :absent, :undefined, :deleted, nil] specify which state you want a storage pool to be in. If 'active', pool will be started. If 'present', ensure that pool is present but do not change its state; if it's missing, you need to specify xml argument. If 'inactive', pool will be stopped. If 'undefined' or 'absent', pool will be removed from I(libvirt) configuration. If 'deleted', pool contents will be deleted and then pool undefined.
        attribute :state
        validates :state, inclusion: {:in=>[:active, :inactive, :present, :absent, :undefined, :deleted], :message=>"%{value} needs to be :active, :inactive, :present, :absent, :undefined, :deleted"}, allow_nil: true

        # @return [:define, :build, :create, :start, :stop, :destroy, :delete, :undefine, :get_xml, :list_pools, :facts, :info, :status, nil] in addition to state management, various non-idempotent commands are available. See examples.
        attribute :command
        validates :command, inclusion: {:in=>[:define, :build, :create, :start, :stop, :destroy, :delete, :undefine, :get_xml, :list_pools, :facts, :info, :status], :message=>"%{value} needs to be :define, :build, :create, :start, :stop, :destroy, :delete, :undefine, :get_xml, :list_pools, :facts, :info, :status"}, allow_nil: true

        # @return [Symbol, nil] Specify if a given storage pool should be started automatically on system boot.
        attribute :autostart
        validates :autostart, type: Symbol

        # @return [String, nil] I(libvirt) connection uri.
        attribute :uri
        validates :uri, type: String

        # @return [String, nil] XML document used with the define command.
        attribute :xml
        validates :xml, type: String

        # @return [:new, :repair, :resize, :no_overwrite, :overwrite, :normal, :zeroed, nil] Pass additional parameters to 'build' or 'delete' commands.
        attribute :mode
        validates :mode, inclusion: {:in=>[:new, :repair, :resize, :no_overwrite, :overwrite, :normal, :zeroed], :message=>"%{value} needs to be :new, :repair, :resize, :no_overwrite, :overwrite, :normal, :zeroed"}, allow_nil: true
      end
    end
  end
end
