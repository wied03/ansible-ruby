# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_owner < Base
        # @return [String] Path to be used for changing owner
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] Name to be used for changing owner
        attribute :user
        validates :user, presence: true, type: String

        # @return [Boolean, nil] Indicates if the owner should be changed recursively
        attribute :recurse
        validates :recurse, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
