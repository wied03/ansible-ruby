# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Imports a list of tasks to be added to the current playbook for subsequent execution.
      class Import_tasks < Base
        # @return [Object, nil] The name of the imported file is specified directly without any other option.,Most keywords, including loops and conditionals, only applied to the imported tasks, not to this statement itself. If you need any of those to apply, use M(include_tasks) instead.
        attribute :free_form, original_name: 'free-form'
      end
    end
  end
end
