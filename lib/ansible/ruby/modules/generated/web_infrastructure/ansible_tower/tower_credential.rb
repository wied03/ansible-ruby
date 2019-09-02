# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower credentials. See U(https://www.ansible.com/tower) for an overview.
      class Tower_credential < Base
        # @return [String] The name to use for the credential.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description to use for the credential.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] User that should own this credential.
        attribute :user

        # @return [Object, nil] Team that should own this credential.
        attribute :team

        # @return [Object, nil] Project that should for this credential.
        attribute :project

        # @return [String, nil] Organization that should own the credential.
        attribute :organization
        validates :organization, type: String

        # @return [:ssh, :vault, :net, :scm, :aws, :vmware, :satellite6, :cloudforms, :gce, :azure_rm, :openstack, :rhv, :insights, :tower] Type of credential being added.
        attribute :kind
        validates :kind, presence: true, expression_inclusion: {:in=>[:ssh, :vault, :net, :scm, :aws, :vmware, :satellite6, :cloudforms, :gce, :azure_rm, :openstack, :rhv, :insights, :tower], :message=>"%{value} needs to be :ssh, :vault, :net, :scm, :aws, :vmware, :satellite6, :cloudforms, :gce, :azure_rm, :openstack, :rhv, :insights, :tower"}

        # @return [Object, nil] Host for this credential.
        attribute :host

        # @return [Object, nil] Username for this credential. access_key for AWS.
        attribute :username

        # @return [Object, nil] Password for this credential. Use ASK for prompting. secret_key for AWS. api_key for RAX.
        attribute :password

        # @return [Object, nil] Path to SSH private key.
        attribute :ssh_key_data

        # @return [Object, nil] Unlock password for ssh_key. Use ASK for prompting.
        attribute :ssh_key_unlock

        # @return [:yes, :no, nil] Should use authorize for net type.
        attribute :authorize
        validates :authorize, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Password for net credentials that require authorize.
        attribute :authorize_password

        # @return [Object, nil] Client or application ID for azure_rm type.
        attribute :client

        # @return [Object, nil] STS token for aws type.
        attribute :security_token

        # @return [Object, nil] Secret token for azure_rm type.
        attribute :secret

        # @return [Object, nil] Subscription ID for azure_rm type.
        attribute :subscription

        # @return [Object, nil] Tenant ID for azure_rm type.
        attribute :tenant

        # @return [Object, nil] Domain for openstack type.
        attribute :domain

        # @return [:None, :sudo, :su, :pbrun, :pfexec, :pmrun, nil] Become method to Use for privledge escalation.
        attribute :become_method
        validates :become_method, expression_inclusion: {:in=>[:None, :sudo, :su, :pbrun, :pfexec, :pmrun], :message=>"%{value} needs to be :None, :sudo, :su, :pbrun, :pfexec, :pmrun"}, allow_nil: true

        # @return [Object, nil] Become username. Use ASK for prompting.
        attribute :become_username

        # @return [Object, nil] Become password. Use ASK for prompting.
        attribute :become_password

        # @return [Object, nil] Vault password. Use ASK for prompting.
        attribute :vault_password

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
