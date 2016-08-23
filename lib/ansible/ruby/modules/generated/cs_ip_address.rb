# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_ip_address < Base
        # @return [String] Public IP address.,Required if C(state=absent)
        attribute :ip_address
        validates :ip_address, type: String

        # @return [Object] Domain the IP address is related to.
        attribute :domain

        # @return [String] Network the IP address is related to.
        attribute :network
        validates :network, type: String

        # @return [Object] Account the IP address is related to.
        attribute :account

        # @return [Object] Name of the project the IP address is related to.
        attribute :project

        # @return [Object] Name of the zone in which the IP address is in.,If not set, default zone is used.
        attribute :zone

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end
