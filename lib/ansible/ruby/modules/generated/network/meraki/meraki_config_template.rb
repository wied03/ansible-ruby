# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for querying, deleting, binding, and unbinding of configuration templates.
      class Meraki_config_template < Base
        # @return [:absent, :query, :present, nil] Specifies whether configuration template information should be queried, modified, or deleted.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :query, :present], :message=>"%{value} needs to be :absent, :query, :present"}, allow_nil: true

        # @return [String, nil] Name of organization containing the configuration template.
        attribute :org_name
        validates :org_name, type: String

        # @return [Object, nil] ID of organization associated to a configuration template.
        attribute :org_id

        # @return [String, nil] Name of the configuration template within an organization to manipulate.
        attribute :config_template
        validates :config_template, type: String

        # @return [String, nil] Name of the network to bind or unbind configuration template to.
        attribute :net_name
        validates :net_name, type: String

        # @return [Object, nil] ID of the network to bind or unbind configuration template to.
        attribute :net_id

        # @return [Symbol, nil] Optional boolean indicating whether the network's switches should automatically bind to profiles of the same model.,This option only affects switch networks and switch templates.,Auto-bind is not valid unless the switch template has at least one profile and has at most one profile per switch model.
        attribute :auto_bind
        validates :auto_bind, type: Symbol
      end
    end
  end
end
