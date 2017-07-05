# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Discover targets on given portal, (dis)connect targets, mark targets to manually or auto start, return device nodes of connected targets.
      class Open_iscsi < Base
        # @return [String, nil] the ip address of the iscsi target
        attribute :portal
        validates :portal, type: String

        # @return [Integer, nil] the port on which the iscsi target process listens
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] the iscsi target name
        attribute :target
        validates :target, type: String

        # @return [Boolean, nil] whether the target node should be connected
        attribute :login
        validates :login, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] discovery.sendtargets.auth.authmethod
        attribute :node_auth
        validates :node_auth, type: String

        # @return [Object, nil] discovery.sendtargets.auth.username
        attribute :node_user

        # @return [Object, nil] discovery.sendtargets.auth.password
        attribute :node_pass

        # @return [Boolean, nil] whether the target node should be automatically connected at startup
        attribute :auto_node_startup
        validates :auto_node_startup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] whether the list of target nodes on the portal should be (re)discovered and added to the persistent iscsi database. Keep in mind that iscsiadm discovery resets configurtion, like node.startup to manual, hence combined with auto_node_startup=yes will always return a changed state.
        attribute :discover
        validates :discover, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] whether the list of nodes in the persistent iscsi database should be returned by the module
        attribute :show_nodes
        validates :show_nodes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
