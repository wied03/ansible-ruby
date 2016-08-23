# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_group < Base
        # @return [Object] Name of the group
        attribute :name
        validates :name, presence: true

        # @return [Object] Description of the group
        attribute :description

        # @return [String] Create or remove the group
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end