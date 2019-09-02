# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Runs one or more commands on remote devices running VyOS. This module can also be introspected to validate key parameters before returning successfully.
      class Vyos_system < Base
        # @return [String, nil] Configure the device hostname parameter. This option takes an ASCII string value.
        attribute :host_name
        validates :host_name, type: String

        # @return [String, nil] The new domain name to apply to the device.
        attribute :domain_name
        validates :domain_name, type: String

        # @return [Object, nil] A list of name servers to use with the device. Mutually exclusive with I(domain_search)
        attribute :name_servers

        # @return [Array<String>, String, nil] A list of domain names to search. Mutually exclusive with I(name_server)
        attribute :domain_search
        validates :domain_search, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] Whether to apply (C(present)) or remove (C(absent)) the settings.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
