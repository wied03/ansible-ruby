# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower users. See U(https://www.ansible.com/tower) for an overview.
      class Tower_user < Base
        # @return [String] The username of the user.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String, nil] First name of the user.
        attribute :first_name
        validates :first_name, type: String

        # @return [String, nil] Last name of the user.
        attribute :last_name
        validates :last_name, type: String

        # @return [String] Email address of the user.
        attribute :email
        validates :email, presence: true, type: String

        # @return [String, nil] Password of the user.
        attribute :password
        validates :password, type: String

        # @return [Object, nil] Organization the user should be made a member of.
        attribute :organization

        # @return [Boolean, nil] User is a system wide administator.
        attribute :superuser
        validates :superuser, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] User is a system wide auditor.
        attribute :auditor
        validates :auditor, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

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
