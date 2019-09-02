# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify IP address properties on Solaris/illumos systems.
      class Ipadm_addrprop < Base
        # @return [String] Specifies the address object we want to manage.
        attribute :addrobj
        validates :addrobj, presence: true, type: String

        # @return [String] Specifies the name of the address property we want to manage.
        attribute :property
        validates :property, presence: true, type: String

        # @return [String, nil] Specifies the value we want to set for the address property.
        attribute :value
        validates :value, type: String

        # @return [Boolean, nil] Specifies that the address property value is temporary. Temporary values do not persist across reboots.
        attribute :temporary
        validates :temporary, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, :reset, nil] Set or reset the property value.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :reset], :message=>"%{value} needs to be :present, :absent, :reset"}, allow_nil: true
      end
    end
  end
end
