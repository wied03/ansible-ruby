# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Rename an ONTAP node.
      class Na_ontap_node < Base
        # @return [String] The new name for the node
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The name of the node to be renamed.  If I(name) already exists, no action will be performed.
        attribute :from_name
        validates :from_name, presence: true, type: String
      end
    end
  end
end
