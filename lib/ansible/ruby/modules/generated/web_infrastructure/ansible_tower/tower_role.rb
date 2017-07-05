# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower roles. See U(https://www.ansible.com/tower) for an overview.
      class Tower_role < Base
        # @return [String, nil] User that receives the permissions specified by the role.
        attribute :user
        validates :user, type: String

        # @return [Object, nil] Team that receives the permissions specified by the role.
        attribute :team

        # @return [:admin, :read, :member, :execute, :adhoc, :update, :use, :auditor] The role type to grant/revoke.
        attribute :role
        validates :role, presence: true, inclusion: {:in=>[:admin, :read, :member, :execute, :adhoc, :update, :use, :auditor], :message=>"%{value} needs to be :admin, :read, :member, :execute, :adhoc, :update, :use, :auditor"}

        # @return [String, nil] Team that the role acts on.
        attribute :target_team
        validates :target_team, type: String

        # @return [Object, nil] Inventory the role acts on.
        attribute :inventory

        # @return [Object, nil] The job_template the role acts on.
        attribute :job_template

        # @return [Object, nil] Credential the role acts on.
        attribute :credential

        # @return [Object, nil] Organiation the role acts on.
        attribute :organization

        # @return [Object, nil] Project the role acts on.
        attribute :project

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] URL to your Tower instance.
        attribute :tower_host

        # @return [Object, nil] Username for your Tower instance.
        attribute :tower_username

        # @return [Object, nil] Password for your Tower instance.
        attribute :tower_password

        # @return [Boolean, nil] Dis/allow insecure connections to Tower. If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :tower_verify_ssl
        validates :tower_verify_ssl, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Path to the Tower config file. See notes.
        attribute :tower_config_file
        validates :tower_config_file, type: String
      end
    end
  end
end
