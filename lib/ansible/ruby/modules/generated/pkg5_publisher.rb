# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pkg5_publisher < Base
        # @return [String] The publisher's name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Whether to ensure that a publisher is present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Packages installed from a sticky repository can only receive updates from that repository.
        attribute :sticky
        validates :sticky, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object] Is the repository enabled or disabled?
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] A path or URL to the repository.,Multiple values may be provided.
        attribute :origin
        validates :origin, type: String

        # @return [Object] A path or URL to the repository mirror.,Multiple values may be provided.
        attribute :mirror
      end
    end
  end
end
