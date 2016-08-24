# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Zfs < Base
        # @return [String] File system, snapshot or volume name e.g. C(rpool/myfs)
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent] Whether to create (C(present)), or remove (C(absent)) a file system, snapshot or volume. All parents/children will be created/destroyed as needed to reach the desired state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] Snapshot from which to create a clone
        attribute :origin
        validates :origin, type: String

        # @return [Object, nil] The C(zfs) module takes key=value pairs for zfs properties to be set. See the zfs(8) man page for more information.
        attribute :key_value
      end
    end
  end
end
