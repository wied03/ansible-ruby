# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Iam < Base
        # @return [Object] Type of IAM resource
        attribute :iam_type
        validates :iam_type, presence: true, inclusion: {:in=>[:user, :group, :role], :message=>"%{value} needs to be :user, :group, :role"}

        # @return [Array<String>] Name of IAM resource to create or identify
        attribute :name, flat_array: true
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [Object] When state is update, will replace name with new_name on IAM resource
        attribute :new_name

        # @return [Object] When state is update, will replace the path with new_path on the IAM resource
        attribute :new_path

        # @return [Object] Whether to create, delete or update the IAM resource. Note, roles cannot be updated.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String] When creating or updating, specify the desired path of the resource. If state is present, it will replace the current path to match what is passed in when they do not match.
        attribute :path
        validates :path, type: String

        # @return [Object] When type is user, it creates, removes, deactivates or activates a user's access key(s). Note that actions apply only to keys specified.
        attribute :access_key_state
        validates :access_key_state, inclusion: {:in=>[:create, :remove, :active, :inactive], :message=>"%{value} needs to be :create, :remove, :active, :inactive"}, allow_nil: true

        # @return [String] When access_key_state is create it will ensure this quantity of keys are present. Defaults to 1.
        attribute :key_count
        validates :key_count, type: String

        # @return [Object] A list of the keys that you want impacted by the access_key_state paramter.
        attribute :access_key_ids

        # @return [Object] A list of groups the user should belong to. When update, will gracefully remove groups not listed.
        attribute :groups

        # @return [Object] When type is user and state is present, define the users login password. Also works with update. Note that always returns changed.
        attribute :password

        # @return [String] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end