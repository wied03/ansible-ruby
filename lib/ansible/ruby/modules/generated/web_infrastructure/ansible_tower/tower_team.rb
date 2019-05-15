# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower teams. See U(https://www.ansible.com/tower) for an overview.
      class Tower_team < Base
        # @return [String] Name to use for the team.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Organization the team should be made a member of.
        attribute :organization
        validates :organization, presence: true, type: String

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
