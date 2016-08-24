# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_user_group < Base
        # @return [Object] Name or id for the user
        attribute :user
        validates :user, presence: true

        # @return [Object] Name or id for the group.
        attribute :group
        validates :group, presence: true

        # @return [:present, :absent, nil] Should the user be present or absent in the group
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
