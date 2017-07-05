# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove PostgreSQL databases from a remote host.
      class Postgresql_db < Base
        # @return [String] name of the database to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Name of the role to set as owner of the database
        attribute :owner

        # @return [String, nil] Template used to create the database
        attribute :template
        validates :template, type: String

        # @return [String, nil] Encoding of the database
        attribute :encoding
        validates :encoding, type: String

        # @return [String, nil] Collation order (LC_COLLATE) to use in the database. Must match collation order of template database unless C(template0) is used as template.
        attribute :lc_collate
        validates :lc_collate, type: String

        # @return [String, nil] Character classification (LC_CTYPE) to use in the database (e.g. lower, upper, ...) Must match LC_CTYPE of template database unless C(template0) is used as template.
        attribute :lc_ctype
        validates :lc_ctype, type: String

        # @return [:present, :absent, nil] The database state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
