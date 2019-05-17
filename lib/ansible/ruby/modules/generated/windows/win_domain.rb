# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Ensure that the domain named by C(dns_domain_name) exists and is reachable.
      # If the domain is not reachable, the domain is created in a new forest on the target Windows Server 2012R2+ host.
      # This module may require subsequent use of the M(win_reboot) action if changes are made.
      class Win_domain < Base
        # @return [String] The DNS name of the domain which should exist and be reachable or reside on the target Windows host.
        attribute :dns_domain_name
        validates :dns_domain_name, presence: true, type: String

        # @return [Object, nil] The netbios name of the domain.,If not set, then the default netbios name will be the first section of dns_domain_name, up to, but not including the first period.
        attribute :domain_netbios_name

        # @return [String] Safe mode password for the domain controller.
        attribute :safe_mode_password
        validates :safe_mode_password, presence: true, type: String

        # @return [String, nil] The path to a directory on a fixed disk of the Windows host where the domain database will be created.,If not set then the default path is C(%SYSTEMROOT%\NTDS).
        attribute :database_path
        validates :database_path, type: String

        # @return [String, nil] The path to a directory on a fixed disk of the Windows host where the Sysvol file will be created.,If not set then the default path is C(%SYSTEMROOT%\SYSVOL).
        attribute :sysvol_path
        validates :sysvol_path, type: String
      end
    end
  end
end
