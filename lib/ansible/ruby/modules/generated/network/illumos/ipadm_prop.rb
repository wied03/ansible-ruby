# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify protocol properties on Solaris/illumos systems.
      class Ipadm_prop < Base
        # @return [String] Specifies the procotol for which we want to manage properties.
        attribute :protocol
        validates :protocol, presence: true, type: String

        # @return [String] Specifies the name of property we want to manage.
        attribute :property
        validates :property, presence: true, type: String

        # @return [String, nil] Specifies the value we want to set for the property.
        attribute :value
        validates :value, type: String

        # @return [Symbol, nil] Specifies that the property value is temporary. Temporary property values do not persist across reboots.
        attribute :temporary
        validates :temporary, type: Symbol

        # @return [:present, :absent, :reset, nil] Set or reset the property value.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :reset], :message=>"%{value} needs to be :present, :absent, :reset"}, allow_nil: true
      end
    end
  end
end
