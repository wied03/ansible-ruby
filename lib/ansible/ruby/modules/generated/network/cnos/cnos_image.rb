# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to work with switch firmware images. It provides a way to download a firmware image to a network device from a remote server using FTP, SFTP, TFTP, or SCP. The first step is to create a directory from where the remote server can be reached. The next step is to provide the full file path of the image's location. Authentication details required by the remote server must be provided as well. By default, this method makes the newly downloaded firmware image the active image, which will be used by the switch during the next restart. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_image.html)
      class Cnos_image < Base
        # @return [:SFTP, :SCP, :FTP, :TFTP] This refers to the protocol used by the network device to interact with the remote server from where to download the firmware image. The choices are FTP, SFTP, TFTP, or SCP. Any other protocols will result in error. If this parameter is not specified there is no default value to be used.
        attribute :protocol
        validates :protocol, presence: true, expression_inclusion: {:in=>[:SFTP, :SCP, :FTP, :TFTP], :message=>"%{value} needs to be :SFTP, :SCP, :FTP, :TFTP"}

        # @return [Object] This specifies the IP Address of the remote server from where the software image will be downloaded.
        attribute :serverip
        validates :serverip, presence: true

        # @return [Object] This specifies the full file path of the image located on the remote server. In case the relative path is used as the variable value, the root folder for the user of the server needs to be specified.
        attribute :imgpath
        validates :imgpath, presence: true

        # @return [:all, :boot, :os, :onie] This specifies the firmware image type to be downloaded
        attribute :imgtype
        validates :imgtype, presence: true, expression_inclusion: {:in=>[:all, :boot, :os, :onie], :message=>"%{value} needs to be :all, :boot, :os, :onie"}

        # @return [Object] Specify the username for the server relating to the protocol used
        attribute :serverusername
        validates :serverusername, presence: true

        # @return [Object, nil] Specify the password for the server relating to the protocol used
        attribute :serverpassword
      end
    end
  end
end
