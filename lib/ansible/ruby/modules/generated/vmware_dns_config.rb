# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_dns_config < Base
        # @return [String] The hostname that an ESXi host should be changed to.
        attribute :change_hostname_to
        validates :change_hostname_to, presence: true, type: String

        # @return [String] The domain the ESXi host should be apart of.
        attribute :domainname
        validates :domainname, presence: true, type: String

        # @return [Array] The DNS servers that the host should be configured to use.
        attribute :dns_servers
        validates :dns_servers, presence: true, type: Array
      end
    end
  end
end
