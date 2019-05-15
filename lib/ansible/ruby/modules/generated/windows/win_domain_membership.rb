# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages domain membership or workgroup membership for a Windows host. Also supports hostname changes.
      # This module may require subsequent use of the M(win_reboot) action if changes are made.
      class Win_domain_membership < Base
        # @return [Object, nil] When C(state) is C(domain), the DNS name of the domain to which the targeted Windows host should be joined.
        attribute :dns_domain_name

        # @return [Object] Username of a domain admin for the target domain (required to join or leave the domain).
        attribute :domain_admin_user
        validates :domain_admin_user, presence: true

        # @return [Object, nil] Password for the specified C(domain_admin_user).
        attribute :domain_admin_password

        # @return [Object, nil] The desired hostname for the Windows host.
        attribute :hostname

        # @return [Object, nil] The desired OU path for adding the computer object.,This is only used when adding the target host to a domain, if it is already a member then it is ignored.
        attribute :domain_ou_path

        # @return [:domain, :workgroup, nil] Whether the target host should be a member of a domain or workgroup.
        attribute :state
        validates :state, inclusion: {:in=>[:domain, :workgroup], :message=>"%{value} needs to be :domain, :workgroup"}, allow_nil: true

        # @return [Object, nil] When C(state) is C(workgroup), the name of the workgroup that the Windows host should be in.
        attribute :workgroup_name
      end
    end
  end
end
