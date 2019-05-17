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

        # @return [:yes, :no, nil] User is a system wide administator.
        attribute :superuser
        validates :superuser, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] User is a system wide auditor.
        attribute :auditor
        validates :auditor, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
