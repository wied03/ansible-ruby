# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Ensure that a Windows Server 2012+ host is configured as a domain controller or demoted to member server. This module may require subsequent use of the M(win_reboot) action if changes are made.
      class Win_domain_controller < Base
        # @return [String, nil] When C(state) is C(domain_controller), the DNS name of the domain for which the targeted Windows host should be a DC.
        attribute :dns_domain_name
        validates :dns_domain_name, type: String

        # @return [String] Username of a domain admin for the target domain (necessary to promote or demote a domain controller).
        attribute :domain_admin_user
        validates :domain_admin_user, presence: true, type: String

        # @return [String] Password for the specified C(domain_admin_user).
        attribute :domain_admin_password
        validates :domain_admin_password, presence: true, type: String

        # @return [String, nil] Safe mode password for the domain controller (required when C(state) is C(domain_controller)).
        attribute :safe_mode_password
        validates :safe_mode_password, type: String

        # @return [String, nil] Password to be assigned to the local C(Administrator) user (required when C(state) is C(member_server)).
        attribute :local_admin_password
        validates :local_admin_password, type: String

        # @return [:yes, :no, nil] Whether to install the domain controller as a read only replica for an existing domain.
        attribute :read_only
        validates :read_only, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specifies the name of an existing site where you can place the new domain controller.,This option is required when I(read_only) is C(yes).
        attribute :site_name
        validates :site_name, type: String

        # @return [:domain_controller, :member_server, nil] Whether the target host should be a domain controller or a member server.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:domain_controller, :member_server], :message=>"%{value} needs to be :domain_controller, :member_server"}, allow_nil: true

        # @return [String, nil] The path to a directory on a fixed disk of the Windows host where the domain database will be created..,If not set then the default path is C(%SYSTEMROOT%\NTDS).
        attribute :database_path
        validates :database_path, type: String

        # @return [String, nil] The path to a directory on a fixed disk of the Windows host where the Sysvol folder will be created.,If not set then the default path is C(%SYSTEMROOT%\SYSVOL).
        attribute :sysvol_path
        validates :sysvol_path, type: String
      end
    end
  end
end
