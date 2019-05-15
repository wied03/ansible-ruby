# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Describes a task definition in ecs.
      class Ecs_taskdefinition_facts < Base
        # @return [String] The name of the task definition to get details for
        attribute :task_definition
        validates :task_definition, presence: true, type: String
      end
    end
  end
end
