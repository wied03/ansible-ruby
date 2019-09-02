# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage user accounts and user attributes on a BIG-IP. Typically this module operates only on the REST API users and not the CLI users. When specifying C(root), you may only change the password. Your other parameters will be ignored in this case. Changing the C(root) password is not an idempotent operation. Therefore, it will change it every time this module attempts to change it.
      class Bigip_user < Base
        # @return [String, nil] Full name of the user.
        attribute :full_name
        validates :full_name, type: String

        # @return [String] Name of the user to create, remove or modify.,The C(root) user may not be removed.
        attribute :username_credential
        validates :username_credential, presence: true, type: String

        # @return [String, nil] Set the users password to this unencrypted value. C(password_credential) is required when creating a new account.
        attribute :password_credential
        validates :password_credential, type: String

        # @return [:bash, :none, :tmsh, nil] Optionally set the users shell.
        attribute :shell
        validates :shell, expression_inclusion: {:in=>[:bash, :none, :tmsh], :message=>"%{value} needs to be :bash, :none, :tmsh"}, allow_nil: true

        # @return [String, nil] Specifies the administrative partition to which the user has access. C(partition_access) is required when creating a new account. Should be in the form "partition:role". Valid roles include C(acceleration-policy-editor), C(admin), C(application-editor), C(auditor) C(certificate-manager), C(guest), C(irule-manager), C(manager), C(no-access) C(operator), C(resource-admin), C(user-manager), C(web-application-security-administrator), and C(web-application-security-editor). Partition portion of tuple should be an existing partition or the value 'all'.
        attribute :partition_access
        validates :partition_access, type: String

        # @return [:present, :absent, nil] Whether the account should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:always, :on_create, nil] C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created users. When C(username_credential) is C(root), this value will be forced to C(always).
        attribute :update_password
        validates :update_password, expression_inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
