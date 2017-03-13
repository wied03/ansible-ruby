# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Attach or Detach volumes from OpenStack VM's
      class Os_server_volume < Base
        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Name or ID of server you want to attach a volume to
        attribute :server
        validates :server, presence: true

        # @return [Object] Name or id of volume you want to attach to a server
        attribute :volume
        validates :volume, presence: true

        # @return [Object, nil] Device you want to attach. Defaults to auto finding a device name.
        attribute :device
      end
    end
  end
end
