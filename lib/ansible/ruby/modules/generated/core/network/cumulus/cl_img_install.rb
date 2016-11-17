# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # install a different version of Cumulus Linux in the inactive slot. For more details go the Image Management User Guide at U(http://docs.cumulusnetworks.com/).
      class Cl_img_install < Base
        # @return [Object] The full path to the Cumulus Linux binary image. Can be a local path, http or https URL. If the code version is in the name of the file, the module will assume this is the version of code you wish to install.
        attribute :src
        validates :src, presence: true

        # @return [Object, nil] Inform the module of the exact version one is installing. This overrides the automatic check of version in the file name. For example, if the binary file name is called CumulusLinux-2.2.3.bin, and version is set to '2.5.0', then the module will assume it is installing '2.5.0' not '2.2.3'. If version is not included, then the module will assume '2.2.3' is the version to install.
        attribute :version

        # @return [:yes, :no, nil] Switch slots after installing the image. To run the installed code, reboot the switch.
        attribute :switch_slot
        validates :switch_slot, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
