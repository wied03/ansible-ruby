# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Assists in managing SNMP communities on a BIG-IP. Different SNMP versions are supported by this module. Take note of the different parameters offered by this module, as different parameters work for different versions of SNMP. Typically this becomes an interest if you are mixing versions C(v2c) and C(3).
      class Bigip_snmp_community < Base
        # @return [:present, :absent, nil] When C(present), ensures that the address list and entries exists.,When C(absent), ensures the address list is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:v1, :v2c, :v3, nil] Specifies to which Simple Network Management Protocol (SNMP) version the trap destination applies.
        attribute :version
        validates :version, inclusion: {:in=>[:v1, :v2c, :v3], :message=>"%{value} needs to be :v1, :v2c, :v3"}, allow_nil: true

        # @return [String, nil] Name that identifies the SNMP community.,When C(version) is C(v1) or C(v2c), this parameter is required.,The name C(public) is a reserved name on the BIG-IP. This module handles that name differently than others. Functionally, you should not see a difference however.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Specifies the community string (password) for access to the MIB.,This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.
        attribute :community

        # @return [String, nil] Specifies the source address for access to the MIB.,This parameter can accept a value of C(all).,If this parameter is not specified, the value C(all) is used.,This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.,If C(source) is set to C(all), then it is not possible to specify an C(oid). This will raise an error.,This parameter should be provided when C(state) is C(absent), so that the correct community is removed. To remove the C(public) SNMP community that comes with a BIG-IP, this parameter should be set to C(default).
        attribute :source
        validates :source, type: String

        # @return [Object, nil] Specifies the port for the trap destination.,This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.
        attribute :port

        # @return [Float, nil] Specifies the object identifier (OID) for the record.,When C(version) is C(v3), this parameter is required.,When C(version) is either C(v1) or C(v2c), if this value is specified, then C(source) must not be set to C(all).
        attribute :oid
        validates :oid, type: Float

        # @return [:ro, :rw, :"read-only", :"read-write", nil] Specifies the user's access level to the MIB.,When creating a new community, if this parameter is not specified, the default is C(ro).,When C(ro), specifies that the user can view the MIB, but cannot modify the MIB.,When C(rw), specifies that the user can view and modify the MIB.
        attribute :access
        validates :access, inclusion: {:in=>[:ro, :rw, :"read-only", :"read-write"], :message=>"%{value} needs to be :ro, :rw, :\"read-only\", :\"read-write\""}, allow_nil: true

        # @return [4, 6, nil] Specifies whether the record applies to IPv4 or IPv6 addresses.,When creating a new community, if this value is not specified, the default of C(4) will be used.,This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.
        attribute :ip_version
        validates :ip_version, inclusion: {:in=>[4, 6], :message=>"%{value} needs to be 4, 6"}, allow_nil: true

        # @return [String, nil] Specifies the name of the user for whom you want to grant access to the SNMP v3 MIB.,This parameter is only relevant when C(version) is C(v3). If C(version) is something else, this parameter is ignored.,When creating a new SNMP C(v3) community, this parameter is required.,This parameter cannot be changed once it has been set.
        attribute :snmp_username
        validates :snmp_username, type: String

        # @return [:md5, :sha, :none, nil] Specifies the authentication method for the user.,When C(md5), specifies that the system uses the MD5 algorithm to authenticate the user.,When C(sha), specifies that the secure hash algorithm (SHA) to authenticate the user.,When C(none), specifies that user does not require authentication.,When creating a new SNMP C(v3) community, if this parameter is not specified, the default of C(sha) will be used.
        attribute :snmp_auth_protocol
        validates :snmp_auth_protocol, inclusion: {:in=>[:md5, :sha, :none], :message=>"%{value} needs to be :md5, :sha, :none"}, allow_nil: true

        # @return [String, nil] Specifies the password for the user.,When creating a new SNMP C(v3) community, this parameter is required.,This value must be at least 8 characters long.
        attribute :snmp_auth_password
        validates :snmp_auth_password, type: String

        # @return [:aes, :des, :none, nil] Specifies the encryption protocol.,When C(aes), specifies that the system encrypts the user information using AES (Advanced Encryption Standard).,When C(des), specifies that the system encrypts the user information using DES (Data Encryption Standard).,When C(none), specifies that the system does not encrypt the user information.,When creating a new SNMP C(v3) community, if this parameter is not specified, the default of C(aes) will be used.
        attribute :snmp_privacy_protocol
        validates :snmp_privacy_protocol, inclusion: {:in=>[:aes, :des, :none], :message=>"%{value} needs to be :aes, :des, :none"}, allow_nil: true

        # @return [String, nil] Specifies the password for the user.,When creating a new SNMP C(v3) community, this parameter is required.,This value must be at least 8 characters long.
        attribute :snmp_privacy_password
        validates :snmp_privacy_password, type: String

        # @return [:always, :on_create, nil] C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created resources.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
