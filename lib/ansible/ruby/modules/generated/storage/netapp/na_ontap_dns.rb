# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, modify DNS servers.
      class Na_ontap_dns < Base
        # @return [:present, :absent, nil] Whether the DNS servers should be enabled for the given vserver.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [String, nil] List of DNS domains such as 'sales.bar.com'. The first domain is the one that the Vserver belongs to.
        attribute :domains
        validates :domains, type: String

        # @return [Array<String>, String, nil] List of IPv4 addresses of name servers such as '123.123.123.123'.
        attribute :nameservers
        validates :nameservers, type: TypeGeneric.new(String)
      end
    end
  end
end
