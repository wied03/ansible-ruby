# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_share < Base
        # @return [String] Share name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Share directory
        attribute :path
        validates :path, presence: true, type: String

        # @return [:present, :absent, nil] Specify whether to add C(present) or remove C(absent) the specified share
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Share description
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Specify whether to allow or deny file listing, in case user got no permission on share
        attribute :list
        validates :list, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specify user list that should get read access on share, separated by comma.
        attribute :read
        validates :read, type: String

        # @return [String, nil] Specify user list that should get read and write access on share, separated by comma.
        attribute :change
        validates :change, type: String

        # @return [String, nil] Specify user list that should get full access on share, separated by comma.
        attribute :full
        validates :full, type: String

        # @return [String, nil] Specify user list that should get no access, regardless of implied access on share, separated by comma.
        attribute :deny
        validates :deny, type: String
      end
    end
  end
end
