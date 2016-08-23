# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_configuration < Base
        # @return [Object] Name of the configuration.
        attribute :name
        validates :name, presence: true

        # @return [Object] Value of the configuration.
        attribute :value
        validates :value, presence: true

        # @return [Object] Ensure the value for corresponding account.
        attribute :account

        # @return [String] Domain the account is related to.,Only considered if C(account) is used.
        attribute :domain
        validates :domain, type: String

        # @return [Object] Ensure the value for corresponding zone.
        attribute :zone

        # @return [Object] Ensure the value for corresponding storage pool.
        attribute :storage

        # @return [Object] Ensure the value for corresponding cluster.
        attribute :cluster
      end
    end
  end
end
