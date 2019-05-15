# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to add and remove custom attributes definitions for the given virtual machine from VMWare.
      class Vmware_guest_custom_attribute_defs < Base
        # @return [String, nil] Name of the custom attribute definition.,This is required parameter, if C(state) is set to C(present) or C(absent).
        attribute :attribute_key
        validates :attribute_key, type: String

        # @return [:present, :absent] Manage definition of custom attributes.,If set to C(present) and definition not present, then custom attribute definition is created.,If set to C(present) and definition is present, then no action taken.,If set to C(absent) and definition is present, then custom attribute definition is removed.,If set to C(absent) and definition is absent, then no action taken.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
