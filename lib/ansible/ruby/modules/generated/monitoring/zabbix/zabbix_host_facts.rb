# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to search for Zabbix host entries.
      class Zabbix_host_facts < Base
        # @return [String] Name of the host in Zabbix.,host_name is the unique identifier used and cannot be updated using this module.
        attribute :host_name
        validates :host_name, presence: true, type: String

        # @return [String, nil] Host interface IP of the host in Zabbix.
        attribute :host_ip
        validates :host_ip, type: String

        # @return [Boolean, nil] Find the exact match
        attribute :exact_match
        validates :exact_match, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Remove duplicate host from host result
        attribute :remove_duplicate
        validates :remove_duplicate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
