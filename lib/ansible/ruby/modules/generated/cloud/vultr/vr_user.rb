# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove users.
      class Vultr_user < Base
        # @return [String] Name of the user
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Email of the user.,Required if C(state=present).
        attribute :email
        validates :email, type: String

        # @return [String, nil] Password of the user.,Only considered while creating a user or when C(force=yes).
        attribute :password
        validates :password, type: String

        # @return [Symbol, nil] Password will only be changed with enforcement.
        attribute :force
        validates :force, type: Symbol

        # @return [Boolean, nil] Whether the API is enabled or not.
        attribute :api_enabled
        validates :api_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:manage_users, :subscriptions, :provisioning, :billing, :support, :abuse, :dns, :upgrade, nil] List of ACLs this users should have, see U(https://www.vultr.com/api/#user_user_list).,Required if C(state=present).,One or more of the choices list, some depend on each other.
        attribute :acls
        validates :acls, inclusion: {:in=>[:manage_users, :subscriptions, :provisioning, :billing, :support, :abuse, :dns, :upgrade], :message=>"%{value} needs to be :manage_users, :subscriptions, :provisioning, :billing, :support, :abuse, :dns, :upgrade"}, allow_nil: true

        # @return [:present, :absent, nil] State of the user.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
