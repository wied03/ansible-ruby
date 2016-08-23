# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_configuration < Base
        # @return [String] Name of the configuration.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] Value of the configuration.
        attribute :value
        validates :value, presence: true

        # @return [String] Ensure the value for corresponding account.
        attribute :account
        validates :account, type: String

        # @return [String] Domain the account is related to.,Only considered if C(account) is used.
        attribute :domain
        validates :domain, type: String

        # @return [String] Ensure the value for corresponding zone.
        attribute :zone
        validates :zone, type: String

        # @return [String] Ensure the value for corresponding storage pool.
        attribute :storage
        validates :storage, type: String

        # @return [Object] Ensure the value for corresponding cluster.
        attribute :cluster
      end
    end
  end
end
