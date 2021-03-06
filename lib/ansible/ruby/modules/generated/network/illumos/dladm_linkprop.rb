# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set / reset link properties on Solaris/illumos systems.
      class Dladm_linkprop < Base
        # @return [Object] Link interface name.
        attribute :link
        validates :link, presence: true

        # @return [String] Specifies the name of the property we want to manage.
        attribute :property
        validates :property, presence: true, type: String

        # @return [String, nil] Specifies the value we want to set for the link property.
        attribute :value
        validates :value, type: String

        # @return [Symbol, nil] Specifies that lin property configuration is temporary. Temporary link property configuration does not persist across reboots.
        attribute :temporary
        validates :temporary, type: Symbol

        # @return [:present, :absent, :reset, nil] Set or reset the property value.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :reset], :message=>"%{value} needs to be :present, :absent, :reset"}, allow_nil: true
      end
    end
  end
end
