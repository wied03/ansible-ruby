# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module configures the timezone setting, both of the system clock and of the hardware clock. If you want to set up the NTP, use M(service) module.
      # It is recommended to restart C(crond) after changing the timezone, otherwise the jobs may run at the wrong time.
      # Several different tools are used depending on the OS/Distribution involved. For Linux it can use C(timedatectl)  or edit C(/etc/sysconfig/clock) or C(/etc/timezone) andC(hwclock). On SmartOS , C(sm-set-timezone), for BSD, C(/etc/localtime) is modified.
      # As of version 2.3 support was added for SmartOS and BSDs.
      # Windows, AIX and HPUX are not supported, please let us know if you find any other OS/distro in which this fails.
      class Timezone < Base
        # @return [String, nil] Name of the timezone for the system clock. Default is to keep current setting. B(At least one of name and hwclock are required.)
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Whether the hardware clock is in UTC or in local timezone. Default is to keep current setting. Note that this option is recommended not to change and may fail to configure, especially on virtual environments such as AWS. B(At least one of name and hwclock are required.) I(Only used on Linux.)
        attribute :hwclock
      end
    end
  end
end
