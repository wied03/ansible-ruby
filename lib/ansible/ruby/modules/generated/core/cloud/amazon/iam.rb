# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for the management of IAM users, user API keys, groups, roles.
      class Iam < Base
        # @return [:user, :group, :role] Type of IAM resource
        attribute :iam_type
        validates :iam_type, presence: true, inclusion: {:in=>[:user, :group, :role], :message=>"%{value} needs to be :user, :group, :role"}

        # @return [String] Name of IAM resource to create or identify
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] When state is update, will replace name with new_name on IAM resource
        attribute :new_name

        # @return [Object, nil] When state is update, will replace the path with new_path on the IAM resource
        attribute :new_path

        # @return [:present, :absent, :update] Whether to create, delete or update the IAM resource. Note, roles cannot be updated.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String, nil] When creating or updating, specify the desired path of the resource. If state is present, it will replace the current path to match what is passed in when they do not match.
        attribute :path
        validates :path, type: String

        # @return [:create, :remove, :active, :inactive, nil] When type is user, it creates, removes, deactivates or activates a user's access key(s). Note that actions apply only to keys specified.
        attribute :access_key_state
        validates :access_key_state, inclusion: {:in=>[:create, :remove, :active, :inactive], :message=>"%{value} needs to be :create, :remove, :active, :inactive"}, allow_nil: true

        # @return [String, nil] When access_key_state is create it will ensure this quantity of keys are present. Defaults to 1.
        attribute :key_count
        validates :key_count, type: String

        # @return [Object, nil] A list of the keys that you want impacted by the access_key_state paramter.
        attribute :access_key_ids

        # @return [Object, nil] A list of groups the user should belong to. When update, will gracefully remove groups not listed.
        attribute :groups

        # @return [String, nil] When type is user and state is present, define the users login password. Also works with update. Note that always returns changed.
        attribute :password
        validates :password, type: String

        # @return [:always, :on_create, nil] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end
