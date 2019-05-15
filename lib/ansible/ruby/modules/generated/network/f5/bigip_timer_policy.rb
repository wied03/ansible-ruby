# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage timer policies on a BIG-IP.
      class Bigip_timer_policy < Base
        # @return [String] Specifies the name of the timer policy.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifies descriptive text that identifies the timer policy.
        attribute :description
        validates :description, type: String

        # @return [Array<Hash>, Hash, nil] Rules that you want assigned to the timer policy
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
