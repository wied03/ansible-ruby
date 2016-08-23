# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Group < Base
        # @return [String] Name of the group to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Optional I(GID) to set for the group.
        attribute :gid

        # @return [:present, :absent, nil] Whether the group should be present or not on the remote host.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] If I(yes), indicates that the group created is a system group.
        attribute :system
        validates :system, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
