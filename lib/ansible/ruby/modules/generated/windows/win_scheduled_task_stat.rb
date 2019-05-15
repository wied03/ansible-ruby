# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Will return whether the folder and task exists.
      # Returns the names of tasks in the folder specified.
      # If C(name) is set and exists, will return information on the task itself.
      # Use M(win_scheduled_task) to configure a scheduled task.
      class Win_scheduled_task_stat < Base
        # @return [String, nil] The folder path where the task lives.
        attribute :path
        validates :path, type: String

        # @return [String, nil] The name of the scheduled task to get information for.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
