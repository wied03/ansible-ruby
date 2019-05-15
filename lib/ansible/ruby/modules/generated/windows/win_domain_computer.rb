# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, read, update and delete computers in Active Directory using a windows bridge computer to launch New-ADComputer, Get-ADComputer, Set-ADComputer, Remove-ADComputer and Move-ADObject powershell commands.
      class Win_domain_computer < Base
        # @return [String] Specifies the name of the object. This parameter sets the Name property of the Active Directory object. The LDAP display name (ldapDisplayName) of this property is name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifies the Security Account Manager (SAM) account name of the computer. It maximum is 256 characters, 15 is advised for older operating systems compatibility. The LDAP display name (ldapDisplayName) for this property is sAMAccountName. If ommitted the value is the same as C(name). Note. All computer SAMAccountNames needs to end with a $.
        attribute :sam_account_name
        validates :sam_account_name, type: String

        # @return [String, nil] Specifies if an account is enabled. An enabled account requires a password. This parameter sets the Enabled property for an account object. This parameter also sets the ADS_UF_ACCOUNTDISABLE flag of the Active Directory User Account Control (UAC) attribute.
        attribute :enabled
        validates :enabled, type: String

        # @return [Array<String>, String, nil] Specifies the X.500 path of the Organizational Unit (OU) or container where the new object is created. Required when I(state=present).
        attribute :ou
        validates :ou, type: TypeGeneric.new(String)

        # @return [String, nil] Specifies a description of the object. This parameter sets the value of the Description property for the object. The LDAP display name (ldapDisplayName) for this property is description.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Specifies the fully qualified domain name (FQDN) of the computer. This parameter sets the DNSHostName property for a computer object. The LDAP display name for this property is dNSHostName. Required when I(state=present).
        attribute :dns_hostname
        validates :dns_hostname, type: String

        # @return [:present, :absent, nil] Specified whether the computer should be C(present) or C(absent) in Active Directory.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
