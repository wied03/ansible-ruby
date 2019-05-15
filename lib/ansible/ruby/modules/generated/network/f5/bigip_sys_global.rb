# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP global settings.
      class Bigip_sys_global < Base
        # @return [Object, nil] Specifies the text to present in the advisory banner.
        attribute :banner_text

        # @return [Object, nil] Specifies the number of seconds of inactivity before the system logs off a user that is logged on.
        attribute :console_timeout

        # @return [Boolean, nil] C(enable) or C(disabled) the Setup utility in the browser-based Configuration utility.
        attribute :gui_setup
        validates :gui_setup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Specifies, when C(enabled), that the system menu displays on the LCD screen on the front of the unit. This setting has no effect when used on the VE platform.
        attribute :lcd_display

        # @return [Object, nil] Specifies whether or not to enable DHCP client on the management interface
        attribute :mgmt_dhcp

        # @return [Object, nil] Specifies, when C(enabled), that the next time you reboot the system, the system boots to an ISO image on the network, rather than an internal media drive.
        attribute :net_reboot

        # @return [Object, nil] Specifies, when C(enabled), that the system suppresses informational text on the console during the boot cycle. When C(disabled), the system presents messages and informational text on the console during the boot cycle.
        attribute :quiet_boot

        # @return [Object, nil] Specifies whether the system displays an advisory message on the login screen.
        attribute :security_banner

        # @return [:present, nil] The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value).
        attribute :state
        validates :state, inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true
      end
    end
  end
end
