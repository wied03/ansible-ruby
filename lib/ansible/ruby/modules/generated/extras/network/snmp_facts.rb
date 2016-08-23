# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Snmp_facts < Base
        # @return [String] Set to target snmp server (normally {{inventory_hostname}})
        attribute :host
        validates :host, presence: true, type: String

        # @return [String] SNMP Version to use, v2/v2c or v3
        attribute :version
        validates :version, presence: true, inclusion: {:in=>[:v2, :v2c, :v3], :message=>"%{value} needs to be :v2, :v2c, :v3"}

        # @return [String] The SNMP community string, required if version is v2/v2c
        attribute :community
        validates :community, type: String

        # @return [String] Authentication level, required if version is v3
        attribute :level
        validates :level, inclusion: {:in=>[:authPriv, :authNoPriv], :message=>"%{value} needs to be :authPriv, :authNoPriv"}, allow_nil: true

        # @return [String] Username for SNMPv3, required if version is v3
        attribute :username
        validates :username, type: String

        # @return [String] Hashing algoritm, required if version is v3
        attribute :integrity
        validates :integrity, inclusion: {:in=>[:md5, :sha], :message=>"%{value} needs to be :md5, :sha"}, allow_nil: true

        # @return [String] Authentication key, required if version is v3
        attribute :authkey
        validates :authkey, type: String

        # @return [String] Encryption algoritm, required if level is authPriv
        attribute :privacy
        validates :privacy, inclusion: {:in=>[:des, :aes], :message=>"%{value} needs to be :des, :aes"}, allow_nil: true

        # @return [String] Encryption key, required if version is authPriv
        attribute :privkey
        validates :privkey, type: String
      end
    end
  end
end
