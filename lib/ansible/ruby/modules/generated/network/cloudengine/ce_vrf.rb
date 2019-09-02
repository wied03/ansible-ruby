# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VPN instance of HUAWEI CloudEngine switches.
      class Ce_vrf < Base
        # @return [Object] VPN instance, the length of vrf name is 1 - 31, i.e. "test", but can not be C(_public_).
        attribute :vrf
        validates :vrf, presence: true

        # @return [Object, nil] Description of the vrf, the string length is 1 - 242 .
        attribute :description

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
