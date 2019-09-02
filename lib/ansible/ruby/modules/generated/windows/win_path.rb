# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows element-based ordering, addition, and removal of Windows path environment variables.
      class Win_path < Base
        # @return [String, nil] Target path environment variable name.
        attribute :name
        validates :name, type: String

        # @return [Array<String>, String] A single path element, or a list of path elements (ie, directories) to add or remove.,When multiple elements are included in the list (and C(state) is C(present)), the elements are guaranteed to appear in the same relative order in the resultant path value.,Variable expansions (eg, C(%VARNAME%)) are allowed, and are stored unexpanded in the target path element.,Any existing path elements not mentioned in C(elements) are always preserved in their current order.,New path elements are appended to the path, and existing path elements may be moved closer to the end to satisfy the requested ordering.,Paths are compared in a case-insensitive fashion, and trailing backslashes are ignored for comparison purposes. However, note that trailing backslashes in YAML require quotes.
        attribute :elements
        validates :elements, presence: true, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] Whether the path elements specified in C(elements) should be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:machine, :user, nil] The level at which the environment variable specified by C(name) should be managed (either for the current user or global machine scope).
        attribute :scope
        validates :scope, expression_inclusion: {:in=>[:machine, :user], :message=>"%{value} needs to be :machine, :user"}, allow_nil: true
      end
    end
  end
end
