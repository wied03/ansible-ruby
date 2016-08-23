# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bigip_facts < Base
        # @return [Object] BIG-IP host
        attribute :server
        validates :server, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [Object] BIG-IP username
        attribute :user
        validates :user, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [Object] BIG-IP password
        attribute :password
        validates :password, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites.  Prior to 2.0, this module would always validate on python >= 2.7.9 and never validate on python <= 2.7.8
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [TrueClass] BIG-IP session support; may be useful to avoid concurrency issues in certain circumstances.
        attribute :session
        validates :session, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [Object] Fact category or list of categories to collect
        attribute :include
        validates :include, presence: true, inclusion: {:in=>[:address_class, :certificate, :client_ssl_profile, :device, :device_group, :interface, :key, :node, :pool, :rule, :self_ip, :software, :system_info, :traffic_group, :trunk, :virtual_address, :virtual_server, :vlan], :message=>"%{value} needs to be :address_class, :certificate, :client_ssl_profile, :device, :device_group, :interface, :key, :node, :pool, :rule, :self_ip, :software, :system_info, :traffic_group, :trunk, :virtual_address, :virtual_server, :vlan"}

        # @return [Object] Shell-style glob matching string used to filter fact keys. Not applicable for software and system_info fact categories.
        attribute :filter
        validates :filter, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true
      end
    end
  end
end