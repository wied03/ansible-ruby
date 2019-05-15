# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Includes a file with a list of tasks to be executed in the current playbook.
      class Include_tasks < Base
        # @return [String, nil] The name of the imported file is specified directly without any other option.,Unlike M(import_tasks), most keywords, including loops and conditionals, apply to this statement.
        attribute :file
        validates :file, type: String

        # @return [Hash, nil] Accepts a hash of task keywords (e.g. C(tags), C(become)) that will be applied to the tasks within the include.
        attribute :apply
        validates :apply, type: Hash

        # @return [Object, nil] Supplying a file name via free-form C(- include_tasks: file.yml) of a file to be included is the equivalent\r\nof specifying an argument of I(file).\r\n
        attribute :free_form, original_name: 'free-form'
      end
    end
  end
end
