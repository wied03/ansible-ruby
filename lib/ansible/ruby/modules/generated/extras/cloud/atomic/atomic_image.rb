# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the container images on the atomic host platform
      # Allows to execute the commands on the container images
      class Atomic_image < Base
        # @return [String] Name of the container image
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :latest, nil] The state of the container image.,The state ```latest``` will ensure container image is upgraded to the latest version and forcefully restart container, if running.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [Boolean, nil] Start or Stop the continer
        attribute :started
        validates :started, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
