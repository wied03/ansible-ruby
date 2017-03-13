# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Loads and executes a role as a task, this frees roles from the `role:` directive and allows them to be treated more as tasks.
      class Include_role < Base
        # @return [String] The name of the role to be executed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] File to load from a Role's tasks/ directory.
        attribute :tasks_from
        validates :tasks_from, type: String

        # @return [String, nil] File to load from a Role's vars/ directory.
        attribute :vars_from
        validates :vars_from, type: String

        # @return [String, nil] File to load from a Role's defaults/ directory.
        attribute :defaults_from
        validates :defaults_from, type: String

        # @return [Boolean, nil] Overrides the role's metadata setting to allow using a role more than once with the same parameters.
        attribute :allow_duplicates
        validates :allow_duplicates, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] If True the variables from defaults/ and vars/ in a role will not be made available to the rest of the play.
        attribute :private
      end
    end
  end
end
