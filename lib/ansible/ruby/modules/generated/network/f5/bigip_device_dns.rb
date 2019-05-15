# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP device DNS settings.
      class Bigip_device_dns < Base
        # @return [:enabled, :disabled, :enable, :disable, nil] Specifies whether the system caches DNS lookups or performs the operation each time a lookup is needed. Please note that this applies only to Access Policy Manager features, such as ACLs, web application rewrites, and authentication.
        attribute :cache
        validates :cache, inclusion: {:in=>[:enabled, :disabled, :enable, :disable], :message=>"%{value} needs to be :enabled, :disabled, :enable, :disable"}, allow_nil: true

        # @return [Array<String>, String, nil] A list of name servers that the system uses to validate DNS lookups
        attribute :name_servers
        validates :name_servers, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] A list of domains that the system searches for local domain lookups, to resolve local host names.
        attribute :search
        validates :search, type: TypeGeneric.new(String)

        # @return [4, 6, nil] Specifies whether the DNS specifies IP addresses using IPv4 or IPv6.
        attribute :ip_version
        validates :ip_version, inclusion: {:in=>[4, 6], :message=>"%{value} needs to be 4, 6"}, allow_nil: true

        # @return [:absent, :present, nil] The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
