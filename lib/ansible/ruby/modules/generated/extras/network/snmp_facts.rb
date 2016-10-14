# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts for a device using SNMP, the facts will be inserted to the ansible_facts key.
      class Snmp_facts < Base
        # @return [String] Set to target snmp server (normally {{inventory_hostname}})
        attribute :host
        validates :host, presence: true, type: String

        # @return [:v2, :v2c, :v3] SNMP Version to use, v2/v2c or v3
        attribute :version
        validates :version, presence: true, inclusion: {:in=>[:v2, :v2c, :v3], :message=>"%{value} needs to be :v2, :v2c, :v3"}

        # @return [String, nil] The SNMP community string, required if version is v2/v2c
        attribute :community
        validates :community, type: String

        # @return [:authPriv, :authNoPriv, nil] Authentication level, required if version is v3
        attribute :level
        validates :level, inclusion: {:in=>[:authPriv, :authNoPriv], :message=>"%{value} needs to be :authPriv, :authNoPriv"}, allow_nil: true

        # @return [String, nil] Username for SNMPv3, required if version is v3
        attribute :username
        validates :username, type: String

        # @return [:md5, :sha, nil] Hashing algoritm, required if version is v3
        attribute :integrity
        validates :integrity, inclusion: {:in=>[:md5, :sha], :message=>"%{value} needs to be :md5, :sha"}, allow_nil: true

        # @return [String, nil] Authentication key, required if version is v3
        attribute :authkey
        validates :authkey, type: String

        # @return [:des, :aes, nil] Encryption algoritm, required if level is authPriv
        attribute :privacy
        validates :privacy, inclusion: {:in=>[:des, :aes], :message=>"%{value} needs to be :des, :aes"}, allow_nil: true

        # @return [String, nil] Encryption key, required if version is authPriv
        attribute :privkey
        validates :privkey, type: String
      end
    end
  end
end
