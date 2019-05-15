# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower labels. See U(https://www.ansible.com/tower) for an overview.
      class Tower_label < Base
        # @return [String] Name to use for the label.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Organization the label should be applied to.
        attribute :organization
        validates :organization, presence: true, type: String

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
