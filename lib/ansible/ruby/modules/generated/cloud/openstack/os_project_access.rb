# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove flavor, volume_type or other resources access from OpenStack.
      class Os_project_access < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Project id.
        attribute :target_project_id
        validates :target_project_id, presence: true, type: String

        # @return [String, nil] The resource type (eg. nova_flavor, cinder_volume_type).
        attribute :resource_type
        validates :resource_type, type: String

        # @return [String, nil] The resource name (eg. tiny).
        attribute :resource_name
        validates :resource_name, type: String

        # @return [Object, nil] The availability zone of the resource.
        attribute :availability_zone
      end
    end
  end
end
