# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_server_volume < Base
        # @return [String] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Name or ID of server you want to attach a volume to
        attribute :server
        validates :server, presence: true

        # @return [Object] Name or id of volume you want to attach to a server
        attribute :volume
        validates :volume, presence: true

        # @return [String] Device you want to attach. Defaults to auto finding a device name.
        attribute :device
        validates :device, type: String
      end
    end
  end
end
