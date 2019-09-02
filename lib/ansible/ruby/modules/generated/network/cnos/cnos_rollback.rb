# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to work with switch configurations. It provides a way to roll back configurations of a switch from a remote server. This is achieved by using startup or running configurations of the target device that were previously backed up to a remote server using FTP, SFTP, TFTP, or SCP. The first step is to create a directory from where the remote server can be reached. The next step is to provide the full file path of he backup configuration's location. Authentication details required by the remote server must be provided as well. By default, this method overwrites the switch's configuration file with the newly downloaded file. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_rollback.html)
      class Cnos_rollback < Base
        # @return [:"running-config", :"startup-config"] This refers to the type of configuration which will be used for the rolling back process. The choices are the running or startup configurations. There is no default value, so it will result in an error if the input is incorrect.
        attribute :configType
        validates :configType, presence: true, expression_inclusion: {:in=>[:"running-config", :"startup-config"], :message=>"%{value} needs to be :\"running-config\", :\"startup-config\""}

        # @return [:SFTP, :SCP, :FTP, :TFTP] This refers to the protocol used by the network device to interact with the remote server from where to download the backup configuration. The choices are FTP, SFTP, TFTP, or SCP. Any other protocols will result in error. If this parameter is not specified, there is no default value to be used.
        attribute :protocol
        validates :protocol, presence: true, expression_inclusion: {:in=>[:SFTP, :SCP, :FTP, :TFTP], :message=>"%{value} needs to be :SFTP, :SCP, :FTP, :TFTP"}

        # @return [Object] This specifies the IP Address of the remote server from where the backup configuration will be downloaded.
        attribute :rcserverip
        validates :rcserverip, presence: true

        # @return [Object] This specifies the full file path of the configuration file located on the remote server. In case the relative path is used as the variable value, the root folder for the user of the server needs to be specified.
        attribute :rcpath
        validates :rcpath, presence: true

        # @return [Object] Specify username for the server relating to the protocol used.
        attribute :serverusername
        validates :serverusername, presence: true

        # @return [Object] Specify password for the server relating to the protocol used.
        attribute :serverpassword
        validates :serverpassword, presence: true
      end
    end
  end
end
