# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Install an operating system by setting the boot options like boot image and kickstart image and optionally select to install using ISSU (In Server Software Upgrade).
      class Nxos_install_os < Base
        # @return [String] Name of the system (or combined) image file on flash.
        attribute :system_image_file
        validates :system_image_file, presence: true, type: String

        # @return [Object, nil] Name of the kickstart image file on flash. (Not required on all Nexus platforms)
        attribute :kickstart_image_file

        # @return [:required, :desired, :yes, :no, nil] Upgrade using In Service Software Upgrade (ISSU). (Supported on N5k, N7k, N9k platforms),Selecting 'required' or 'yes' means that upgrades will only proceed if the switch is capable of ISSU.,Selecting 'desired' means that upgrades will use ISSU if possible but will fall back to disruptive upgrade if needed.,Selecting 'no' means do not use ISSU. Forced disruptive.
        attribute :issu
        validates :issu, inclusion: {:in=>[:required, :desired, :yes, :no], :message=>"%{value} needs to be :required, :desired, :yes, :no"}, allow_nil: true
      end
    end
  end
end
