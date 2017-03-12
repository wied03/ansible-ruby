# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Install an operating system by setting the boot options like boot image and kickstart image.
      class Nxos_install_os < Base
        # @return [String] Name of the system (or combined) image file on flash.
        attribute :system_image_file
        validates :system_image_file, presence: true, type: String

        # @return [Object, nil] Name of the kickstart image file on flash.
        attribute :kickstart_image_file
      end
    end
  end
end
