# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides support for querying data from Cisco NSO using XPath.
      class Nso_query < Base
        # @return [String] XPath selection relative to the root.
        attribute :xpath
        validates :xpath, presence: true, type: String

        # @return [Array<String>, String] List of fields to select from matching nodes.\r\n
        attribute :fields
        validates :fields, presence: true, type: TypeGeneric.new(String)
      end
    end
  end
end
