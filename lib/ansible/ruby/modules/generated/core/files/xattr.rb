# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Xattr < Base
        # @return [String] The full path of the file/object to get the facts of
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The name of a specific Extended attribute key to set/retrieve
        attribute :key
        validates :key, type: String

        # @return [String, nil] The value to set the named name/key to, it automatically sets the C(state) to 'set'
        attribute :value
        validates :value, type: String

        # @return [:read, :present, :all, :keys, :absent, nil] defines which state you want to do. C(read) retrieves the current value for a C(key) (default) C(present) sets C(name) to C(value), default if value is set C(all) dumps all data C(keys) retrieves all keys C(absent) deletes the key
        attribute :state
        validates :state, inclusion: {:in=>[:read, :present, :all, :keys, :absent], :message=>"%{value} needs to be :read, :present, :all, :keys, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] if yes, dereferences symlinks and sets/gets attributes on symlink target, otherwise acts on symlink itself.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
