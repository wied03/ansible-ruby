# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The manageiq_user module supports adding, updating and deleting users in ManageIQ.
      class Manageiq_user < Base
        # @return [:absent, :present, nil] absent - user should not exist, present - user should be.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] The unique userid in manageiq, often mentioned as username.
        attribute :userid
        validates :userid, presence: true, type: String

        # @return [String, nil] The users' full name.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The users' password.
        attribute :password
        validates :password, type: String

        # @return [String, nil] The name of the group to which the user belongs.
        attribute :group
        validates :group, type: String

        # @return [String, nil] The users' E-mail address.
        attribute :email
        validates :email, type: String

        # @return [:always, :on_create, nil] C(always) will update passwords unconditionally.  C(on_create) will only set the password for a newly created user.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end
