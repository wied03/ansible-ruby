# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Much like the `roles:` keyword, this task loads a role, but it allows you to control it when the role tasks run in between other tasks of the play.
      # Most keywords, loops and conditionals will only be applied to the imported tasks, not to this statement itself. If you want the opposite behavior, use M(include_role) instead. To better understand the difference you can read the L(Including and Importing Guide,../user_guide/playbooks_reuse_includes.html).
      class Import_role < Base
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
        validates :allow_duplicates, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This option is a no op, and the functionality described in previous versions was not implemented. This option will be removed in Ansible v2.8.
        attribute :private
        validates :private, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
