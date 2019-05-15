# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages filesystem user defined extended attributes, requires that they are enabled on the target filesystem and that the setfattr/getfattr utilities are present.
      class Xattr < Base
        # @return [String] The full path of the file/object to get the facts of.,Before 2.3 this option was only usable as I(name).
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] Namespace of the named name/key.
        attribute :namespace
        validates :namespace, type: String

        # @return [String, nil] The name of a specific Extended attribute key to set/retrieve.
        attribute :key
        validates :key, type: String

        # @return [String, nil] The value to set the named name/key to, it automatically sets the C(state) to 'set'.
        attribute :value
        validates :value, type: String

        # @return [:absent, :all, :keys, :present, :read, nil] defines which state you want to do. C(read) retrieves the current value for a C(key) (default) C(present) sets C(name) to C(value), default if value is set C(all) dumps all data C(keys) retrieves all keys C(absent) deletes the key
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :all, :keys, :present, :read], :message=>"%{value} needs to be :absent, :all, :keys, :present, :read"}, allow_nil: true

        # @return [String, nil] If C(yes), dereferences symlinks and sets/gets attributes on symlink target, otherwise acts on symlink itself.
        attribute :follow
        validates :follow, type: String
      end
    end
  end
end
