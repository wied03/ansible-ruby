# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify IP interface properties on Solaris/illumos systems.
      class Ipadm_ifprop < Base
        # @return [Object] Specifies the IP interface we want to manage.
        attribute :interface
        validates :interface, presence: true

        # @return [Object] Specifies the procotol for which we want to manage properties.
        attribute :protocol
        validates :protocol, presence: true

        # @return [Object] Specifies the name of the property we want to manage.
        attribute :property
        validates :property, presence: true

        # @return [Object, nil] Specifies the value we want to set for the property.
        attribute :value

        # @return [Boolean, nil] Specifies that the property value is temporary. Temporary property values do not persist across reboots.
        attribute :temporary
        validates :temporary, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, :reset, nil] Set or reset the property value.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :reset], :message=>"%{value} needs to be :present, :absent, :reset"}, allow_nil: true
      end
    end
  end
end
