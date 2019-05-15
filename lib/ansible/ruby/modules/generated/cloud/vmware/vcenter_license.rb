# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and delete vCenter license keys.
      class Vcenter_license < Base
        # @return [Array<String>, String, nil] The optional labels of the license key to manage in vSphere vCenter.,This is dictionary with key/value pair.
        attribute :labels
        validates :labels, type: TypeGeneric.new(String)

        # @return [String] The license key to manage in vSphere vCenter.
        attribute :license
        validates :license, presence: true, type: String

        # @return [:absent, :present, nil] Whether to add (C(present)) or remove (C(absent)) the license key.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
