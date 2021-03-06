# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # create / delete a database in the Cloud Databases.
      class Rax_cdb_database < Base
        # @return [Object, nil] The databases server UUID
        attribute :cdb_id

        # @return [String, nil] Name to give to the database
        attribute :name
        validates :name, type: String

        # @return [String, nil] Set of symbols and encodings
        attribute :character_set
        validates :character_set, type: String

        # @return [String, nil] Set of rules for comparing characters in a character set
        attribute :collate
        validates :collate, type: String

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
