# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove DNS domains.
      class Vultr_dns_domain < Base
        # @return [String] The domain name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The default server IP.,Use M(vultr_dns_record) to change it once the domain is created.,Required if C(state=present).
        attribute :server_ip
        validates :server_ip, type: String

        # @return [:present, :absent, nil] State of the DNS domain.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
