# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collect facts from F5 BIG-IP devices via iControl SOAP API
      class Bigip_facts < Base
        # @return [Symbol, nil] BIG-IP session support; may be useful to avoid concurrency issues in certain circumstances.
        attribute :session
        validates :session, type: Symbol

        # @return [:address_class, :certificate, :client_ssl_profile, :device, :device_group, :interface, :key, :node, :pool, :provision, :rule, :self_ip, :software, :system_info, :traffic_group, :trunk, :virtual_address, :virtual_server, :vlan] Fact category or list of categories to collect
        attribute :include
        validates :include, presence: true, expression_inclusion: {:in=>[:address_class, :certificate, :client_ssl_profile, :device, :device_group, :interface, :key, :node, :pool, :provision, :rule, :self_ip, :software, :system_info, :traffic_group, :trunk, :virtual_address, :virtual_server, :vlan], :message=>"%{value} needs to be :address_class, :certificate, :client_ssl_profile, :device, :device_group, :interface, :key, :node, :pool, :provision, :rule, :self_ip, :software, :system_info, :traffic_group, :trunk, :virtual_address, :virtual_server, :vlan"}

        # @return [Object, nil] Shell-style glob matching string used to filter fact keys. Not applicable for software, provision, and system_info fact categories.
        attribute :filter
      end
    end
  end
end
