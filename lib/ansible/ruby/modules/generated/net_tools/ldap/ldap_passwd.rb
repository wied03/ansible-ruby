# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set a password for an LDAP entry.  This module only asserts that a given password is valid for a given entry.  To assert the existence of an entry, see M(ldap_entry).
      class Ldap_passwd < Base
        # @return [String] The (plaintext) password to be set for I(dn).
        attribute :passwd
        validates :passwd, presence: true, type: String
      end
    end
  end
end
