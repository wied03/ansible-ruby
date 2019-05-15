# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enable, disable ldap, and add ldap users
      class Na_elementsw_ldap < Base
        # @return [:present, :absent] Whether the specified volume should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:DirectBind, :SearchAndBind, nil] Identifies which user authentication method to use.
        attribute :authType
        validates :authType, inclusion: {:in=>[:DirectBind, :SearchAndBind], :message=>"%{value} needs to be :DirectBind, :SearchAndBind"}, allow_nil: true

        # @return [Object, nil] The base DN of the tree to start the group search (will do a subtree search from here)
        attribute :groupSearchBaseDn

        # @return [:NoGroup, :ActiveDirectory, :MemberDN, nil] Controls the default group search filter used
        attribute :groupSearchType
        validates :groupSearchType, inclusion: {:in=>[:NoGroup, :ActiveDirectory, :MemberDN], :message=>"%{value} needs to be :NoGroup, :ActiveDirectory, :MemberDN"}, allow_nil: true

        # @return [String, nil] A comma-separated list of LDAP server URIs
        attribute :serverURIs
        validates :serverURIs, type: String

        # @return [Object, nil] The base DN of the tree to start the search (will do a subtree search from here)
        attribute :userSearchBaseDN

        # @return [Object, nil] A dully qualified DN to log in with to perform an LDAp search for the user (needs read access to the LDAP directory).
        attribute :searchBindDN

        # @return [Object, nil] The password for the searchBindDN account used for searching
        attribute :searchBindPassword

        # @return [Object, nil] the LDAP Filter to use
        attribute :userSearchFilter

        # @return [Array<String>, String, nil] A string that is used form a fully qualified user DN.
        attribute :userDNTemplate
        validates :userDNTemplate, type: TypeGeneric.new(String)

        # @return [Object, nil] For use with the CustomFilter Search type
        attribute :groupSearchCustomFilter
      end
    end
  end
end
