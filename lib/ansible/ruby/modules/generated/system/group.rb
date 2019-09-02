# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage presence of groups on a host.
      # For Windows targets, use the M(win_group) module instead.
      class Group < Base
        # @return [String] Name of the group to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Optional I(GID) to set for the group.
        attribute :gid

        # @return [:absent, :present, nil] Whether the group should be present or not on the remote host.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] If I(yes), indicates that the group created is a system group.
        attribute :system
        validates :system, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Forces the use of "local" command alternatives on platforms that implement it. This is useful in environments that use centralized authentification when you want to manipulate the local groups. I.E. it uses `lgroupadd` instead of `useradd`.,This requires that these commands exist on the targeted host, otherwise it will be a fatal error.
        attribute :local
        validates :local, type: String
      end
    end
  end
end
