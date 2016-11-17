# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the SSHD settings of a BIG-IP
      class Bigip_device_sshd < Base
        # @return [:all, :"IP address, such as 172.27.1.10", :"IP range, such as 172.27.*.* or 172.27.0.0/255.255.0.0", nil] Specifies, if you have enabled SSH access, the IP address or address range for other systems that can use SSH to communicate with this system.
        attribute :allow
        validates :allow, inclusion: {:in=>[:all, :"IP address, such as 172.27.1.10", :"IP range, such as 172.27.*.* or 172.27.0.0/255.255.0.0"], :message=>"%{value} needs to be :all, :\"IP address, such as 172.27.1.10\", :\"IP range, such as 172.27.*.* or 172.27.0.0/255.255.0.0\""}, allow_nil: true

        # @return [:enabled, :disabled, nil] Whether to enable the banner or not.
        attribute :banner
        validates :banner, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Specifies the text to include on the pre-login banner that displays when a user attempts to login to the system using SSH.
        attribute :banner_text
        validates :banner_text, type: String

        # @return [Object, nil] Specifies the number of seconds before inactivity causes an SSH session to log out.
        attribute :inactivity_timeout

        # @return [:debug, :debug1, :debug2, :debug3, :error, :fatal, :info, :quiet, :verbose, nil] Specifies the minimum SSHD message level to include in the system log.
        attribute :log_level
        validates :log_level, inclusion: {:in=>[:debug, :debug1, :debug2, :debug3, :error, :fatal, :info, :quiet, :verbose], :message=>"%{value} needs to be :debug, :debug1, :debug2, :debug3, :error, :fatal, :info, :quiet, :verbose"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Specifies, when checked C(enabled), that the system accepts SSH communications.
        attribute :login
        validates :login, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Integer, nil] Port that you want the SSH daemon to run on.
        attribute :port
        validates :port, type: Integer
      end
    end
  end
end
