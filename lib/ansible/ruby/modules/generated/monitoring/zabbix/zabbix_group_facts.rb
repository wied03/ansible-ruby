# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to search for Zabbix hostgroup entries.
      class Zabbix_group_facts < Base
        # @return [Array<String>, String] Name of the hostgroup in Zabbix.,hostgroup is the unique identifier used and cannot be updated using this module.
        attribute :hostgroup_name
        validates :hostgroup_name, presence: true, type: TypeGeneric.new(String)
      end
    end
  end
end
