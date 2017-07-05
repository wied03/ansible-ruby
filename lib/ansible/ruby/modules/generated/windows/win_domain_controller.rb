# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Ensure that a Windows Server 2012+ host is configured as a domain controller or demoted to member server. This module may require subsequent use of the M(win_reboot) action if changes are made.
      class Win_domain_controller < Base
        # @return [Object, nil] when C(state) is C(domain_controller), the DNS name of the domain for which the targeted Windows host should be a DC
        attribute :dns_domain_name

        # @return [Object] username of a domain admin for the target domain (necessary to promote or demote a domain controller)
        attribute :domain_admin_user
        validates :domain_admin_user, presence: true

        # @return [Object] password for the specified C(domain_admin_user)
        attribute :domain_admin_password
        validates :domain_admin_password, presence: true

        # @return [Object, nil] safe mode password for the domain controller (required when C(state) is C(domain_controller))
        attribute :safe_mode_password

        # @return [Object, nil] password to be assigned to the local C(Administrator) user (required when C(state) is C(member_server))
        attribute :local_admin_password

        # @return [:domain_controller, :member_server, nil] whether the target host should be a domain controller or a member server
        attribute :state
        validates :state, inclusion: {:in=>[:domain_controller, :member_server], :message=>"%{value} needs to be :domain_controller, :member_server"}, allow_nil: true
      end
    end
  end
end
