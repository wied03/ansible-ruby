# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows to manage user groups on a univention corporate server (UCS). It uses the python API of the UCS to create a new object or edit it.
      class Udm_group < Base
        # @return [:present, :absent, nil] Whether the group is present or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the posix group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Group description.
        attribute :description

        # @return [Array<String>, String, nil] define the whole ldap position of the group, e.g. C(cn=g123m-1A,cn=classes,cn=schueler,cn=groups,ou=schule,dc=example,dc=com).
        attribute :position
        validates :position, type: TypeGeneric.new(String)

        # @return [String, nil] LDAP OU, e.g. school for LDAP OU C(ou=school,dc=example,dc=com).
        attribute :ou
        validates :ou, type: String

        # @return [Array<String>, String, nil] Subpath inside the OU, e.g. C(cn=classes,cn=students,cn=groups).
        attribute :subpath
        validates :subpath, type: TypeGeneric.new(String)
      end
    end
  end
end
