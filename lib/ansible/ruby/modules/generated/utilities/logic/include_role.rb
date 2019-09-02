# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Loads and executes a role as a task dynamically. This frees roles from the `roles:` directive and allows them to be treated more as tasks.
      # Unlike M(import_role), most keywords, including loops and conditionals, apply to this statement.
      # This module is also supported for Windows targets.
      class Include_role < Base
        # @return [Hash, nil] Accepts a hash of task keywords (e.g. C(tags), C(become)) that will be applied to the tasks within the include.
        attribute :apply
        validates :apply, type: Hash

        # @return [String] The name of the role to be executed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] File to load from a role's C(tasks/) directory.
        attribute :tasks_from
        validates :tasks_from, type: String

        # @return [String, nil] File to load from a role's C(vars/) directory.
        attribute :vars_from
        validates :vars_from, type: String

        # @return [String, nil] File to load from a role's C(defaults/) directory.
        attribute :defaults_from
        validates :defaults_from, type: String

        # @return [:yes, :no, nil] Overrides the role's metadata setting to allow using a role more than once with the same parameters.
        attribute :allow_duplicates
        validates :allow_duplicates, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] This option is a no op, and the functionality described in previous versions was not implemented. This option will be removed in Ansible v2.8.
        attribute :private

        # @return [:yes, :no, nil] This option dictates whether the role's C(vars) and C(defaults) are exposed to the playbook. If set to C(yes) the variables will be available to tasks following the C(include_role) task. This functionality differs from standard variable exposure for roles listed under the C(roles) header or C(import_role) as they are exposed at playbook parsing time, and available to earlier roles and tasks as well.
        attribute :public
        validates :public, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
