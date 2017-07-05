# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OpenStack Identity Groups. Groups can be created, deleted or updated. Only the I(description) value can be updated.
      class Os_group < Base
        # @return [String] Group name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Group description
        attribute :description
        validates :description, type: String

        # @return [String, nil] Domain id to create the group in if the cloud supports domains.
        attribute :domain_id
        validates :domain_id, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatability
        attribute :availability_zone
      end
    end
  end
end
