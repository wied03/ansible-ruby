# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_cbs_attachments < Base
        # @return [Object] The device path to attach the volume to, e.g. /dev/xvde
        attribute :device
        validates :device, presence: true

        # @return [Object] Name or id of the volume to attach/detach
        attribute :volume
        validates :volume, presence: true

        # @return [Object] Name or id of the server to attach/detach
        attribute :server
        validates :server, presence: true

        # @return [:present, :absent] Indicate desired state of the resource
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:yes, :no, nil] wait for the volume to be in 'in-use'/'available' state before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
