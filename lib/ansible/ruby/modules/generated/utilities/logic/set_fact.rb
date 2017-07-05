# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows setting new variables.  Variables are set on a host-by-host basis just like facts discovered by the setup module.
      # These variables will be available to subsequent plays during an ansible-playbook run, but will not be saved across executions even if you use a fact cache.
      # Per the standard Ansible variable precedence rules, many other types of variables have a higher priority, so this value may be overridden. See U(http://docs.ansible.com/ansible/playbooks_variables.html#variable-precedence-where-should-i-put-a-variable) for more information.
      class Set_fact < Base
        # @return [Object] The C(set_fact) module takes key=value pairs as variables to set in the playbook scope. Or alternatively, accepts complex arguments using the C(args:) statement.
        attribute :key_value
        validates :key_value, presence: true
      end
    end
  end
end