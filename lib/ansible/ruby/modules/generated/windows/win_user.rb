# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages local Windows user accounts.
      # For non-Windows targets, use the M(user) module instead.
      class Win_user < Base
        # @return [String] Name of the user to create, remove or modify.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Full name of the user.
        attribute :fullname

        # @return [Object, nil] Description of the user.
        attribute :description

        # @return [String, nil] Optionally set the user's password to this (plain text) value.
        attribute :password
        validates :password, type: String

        # @return [:always, :on_create, nil] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [Object, nil] C(yes) will require the user to change their password at next login.,C(no) will clear the expired password flag.
        attribute :password_expired

        # @return [Object, nil] C(yes) will set the password to never expire.,C(no) will allow the password to expire.
        attribute :password_never_expires

        # @return [Object, nil] C(yes) will prevent the user from changing their password.,C(no) will allow the user to change their password.
        attribute :user_cannot_change_password

        # @return [Object, nil] C(yes) will disable the user account.,C(no) will clear the disabled flag.
        attribute :account_disabled

        # @return [:no, nil] C(no) will unlock the user account if locked.
        attribute :account_locked
        validates :account_locked, inclusion: {:in=>[:no], :message=>"%{value} needs to be :no"}, allow_nil: true

        # @return [Array<String>, String, nil] Adds or removes the user from this comma-separated lis of groups, depending on the value of I(groups_action). When I(groups_action) is C(replace) and I(groups) is set to the empty string ('groups='), the user is removed from all groups.
        attribute :groups
        validates :groups, type: TypeGeneric.new(String)

        # @return [:add, :replace, :remove, nil] If C(add), the user is added to each group in I(groups) where not already a member.,If C(replace), the user is added as a member of each group in I(groups) and removed from any other groups.,If C(remove), the user is removed from each group in I(groups).
        attribute :groups_action
        validates :groups_action, inclusion: {:in=>[:add, :replace, :remove], :message=>"%{value} needs to be :add, :replace, :remove"}, allow_nil: true

        # @return [:absent, :present, :query, nil] When C(absent), removes the user account if it exists.,When C(present), creates or updates the user account.,When C(query) (new in 1.9), retrieves the user account details without making any changes.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
