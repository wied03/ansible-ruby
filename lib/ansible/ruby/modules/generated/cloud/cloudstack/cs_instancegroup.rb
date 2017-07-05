# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove instance groups.
      class Cs_instancegroup < Base
        # @return [String] Name of the instance group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Domain the instance group is related to.
        attribute :domain

        # @return [Object, nil] Account the instance group is related to.
        attribute :account

        # @return [Object, nil] Project the instance group is related to.
        attribute :project

        # @return [:present, :absent, nil] State of the instance group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
