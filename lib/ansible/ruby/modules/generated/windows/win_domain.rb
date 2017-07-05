# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Ensure that the domain named by C(dns_domain_name) exists and is reachable. If the domain is not reachable, the domain is created in a new forest on the target Windows Server 2012R2+ host. This module may require subsequent use of the M(win_reboot) action if changes are made.
      class Win_domain < Base
        # @return [String] the DNS name of the domain which should exist and be reachable or reside on the target Windows host
        attribute :dns_domain_name
        validates :dns_domain_name, presence: true, type: String

        # @return [String] safe mode password for the domain controller
        attribute :safe_mode_password
        validates :safe_mode_password, presence: true, type: String
      end
    end
  end
end
