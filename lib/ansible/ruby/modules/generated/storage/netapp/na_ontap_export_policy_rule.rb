# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete or modify export rules in ONTAP
      class Na_ontap_export_policy_rule < Base
        # @return [:present, :absent, nil] Whether the specified export policy rule should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the export rule to manage.
        attribute :policy_name
        validates :policy_name, presence: true, type: String

        # @return [String, nil] List of Client Match Hostnames, IP Addresses, Netgroups, or Domains
        attribute :client_match
        validates :client_match, type: String

        # @return [:any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys, nil] Read only access specifications for the rule
        attribute :ro_rule
        validates :ro_rule, inclusion: {:in=>[:any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys], :message=>"%{value} needs to be :any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys"}, allow_nil: true

        # @return [:any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys, nil] Read Write access specifications for the rule
        attribute :rw_rule
        validates :rw_rule, inclusion: {:in=>[:any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys], :message=>"%{value} needs to be :any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys"}, allow_nil: true

        # @return [:any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys, nil] Read Write access specifications for the rule
        attribute :super_user_security
        validates :super_user_security, inclusion: {:in=>[:any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys], :message=>"%{value} needs to be :any, :none, :never, :krb5, :krb5i, :krb5p, :ntlm, :sys"}, allow_nil: true

        # @return [TrueClass, FalseClass, nil] If 'true', NFS server will honor SetUID bits in SETATTR operation. Default value on creation is 'true'
        attribute :allow_suid
        validates :allow_suid, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [:any, :nfs, :nfs3, :nfs4, :cifs, :flexcache, nil] Client access protocol. Default value is 'any'
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:any, :nfs, :nfs3, :nfs4, :cifs, :flexcache], :message=>"%{value} needs to be :any, :nfs, :nfs3, :nfs4, :cifs, :flexcache"}, allow_nil: true

        # @return [Object, nil] rule index of the export policy for delete and modify
        attribute :rule_index

        # @return [String] Name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
