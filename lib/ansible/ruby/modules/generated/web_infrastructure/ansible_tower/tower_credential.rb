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

        # @return [:ssh, :net, :scm, :aws, :rax, :vmware, :satellite6, :cloudforms, :gce, :azure, :azure_rm, :openstack] Type of credential being added.
        attribute :kind
        validates :kind, presence: true, inclusion: {:in=>[:ssh, :net, :scm, :aws, :rax, :vmware, :satellite6, :cloudforms, :gce, :azure, :azure_rm, :openstack], :message=>"%{value} needs to be :ssh, :net, :scm, :aws, :rax, :vmware, :satellite6, :cloudforms, :gce, :azure, :azure_rm, :openstack"}

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

        # @return [Boolean, nil] Should use authroize for net type.
        attribute :authorize
        validates :authorize, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Password for net credentials that require authroize.
        attribute :authorize_password

        # @return [Object, nil] Client or application ID for azure_rm type.
        attribute :client

        # @return [Object, nil] Secret token for azure_rm type.
        attribute :secret

        # @return [Object, nil] Subscription ID for azure_rm type.
        attribute :subscription

        # @return [Object, nil] Tenant ID for azure_rm type.
        attribute :tenant

        # @return [Object, nil] Domain for openstack type.
        attribute :domain

        # @return [:None, :sudo, :su, :pbrun, :pfexec, nil] Become method to Use for privledge escalation.
        attribute :become_method
        validates :become_method, inclusion: {:in=>[:None, :sudo, :su, :pbrun, :pfexec], :message=>"%{value} needs to be :None, :sudo, :su, :pbrun, :pfexec"}, allow_nil: true

        # @return [Object, nil] Become username. Use ASK for prompting.
        attribute :become_username

        # @return [Object, nil] Become password. Use ASK for prompting.
        attribute :become_password

        # @return [Object, nil] Valut password. Use ASK for prompting.
        attribute :vault_password

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
