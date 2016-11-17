# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module configures the timezone setting, both of the system clock and of the hardware clock. I(Currently only Linux platform is supported.) It is recommended to restart C(crond) after changing the timezone, otherwise the jobs may run at the wrong time. It uses the C(timedatectl) command if available. Otherwise, it edits C(/etc/sysconfig/clock) or C(/etc/timezone) for the system clock, and uses the C(hwclock) command for the hardware clock. If you want to set up the NTP, use M(service) module.
      class Timezone < Base
        # @return [String, nil] Name of the timezone for the system clock. Default is to keep current setting.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Whether the hardware clock is in UTC or in local timezone. Default is to keep current setting. Note that this option is recommended not to change and may fail to configure, especially on virtual environments such as AWS.
        attribute :hwclock
      end
    end
  end
end
