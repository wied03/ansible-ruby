# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Install new images on a BIG-IP.
      class Bigip_software_install < Base
        # @return [String, nil] Image to install on the remote device.
        attribute :image
        validates :image, type: String

        # @return [String, nil] The volume to install the software image to.
        attribute :volume
        validates :volume, type: String

        # @return [:activated, :installed, nil] When C(installed), ensures that the software is installed on the volume and the volume is set to be booted from. The device is B(not) rebooted into the new software.,When C(activated), performs the same operation as C(installed), but the system is rebooted to the new software.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:activated, :installed], :message=>"%{value} needs to be :activated, :installed"}, allow_nil: true
      end
    end
  end
end
