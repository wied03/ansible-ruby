# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove affinity groups.
      class Cs_affinitygroup < Base
        # @return [String] Name of the affinity group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Type of the affinity group. If not specified, first found affinity type is used.
        attribute :affinty_type
        validates :affinty_type, type: String

        # @return [Object, nil] Description of the affinity group.
        attribute :description

        # @return [:present, :absent, nil] State of the affinity group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the affinity group is related to.
        attribute :domain

        # @return [Object, nil] Account the affinity group is related to.
        attribute :account

        # @return [Object, nil] Name of the project the affinity group is related to.
        attribute :project

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
