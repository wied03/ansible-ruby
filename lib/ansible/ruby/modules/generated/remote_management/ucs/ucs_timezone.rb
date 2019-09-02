# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures timezone on Cisco UCS Manager.
      # Examples can be used with the L(UCS Platform Emulator,https://communities.cisco.com/ucspe).
      class Ucs_timezone < Base
        # @return [:absent, :present, nil] If C(absent), will unset timezone.,If C(present), will set or update timezone.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:disabled, :enabled, nil] The admin_state setting,The enabled admin_state indicates the timezone confguration is utilized by UCS Manager.,The disabled admin_state indicates the timezone confguration is ignored by UCS Manager.
        attribute :admin_state
        validates :admin_state, expression_inclusion: {:in=>[:disabled, :enabled], :message=>"%{value} needs to be :disabled, :enabled"}, allow_nil: true

        # @return [String, nil] A user-defined description of the timezone.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :description
        validates :description, type: String

        # @return [String, nil] The timezone name.,Time zone names are from the L(tz database,https://en.wikipedia.org/wiki/List_of_tz_database_time_zones),The timezone name is case sensitive.,The timezone name can be between 0 and 510 alphanumeric characters.,You cannot use spaces or any special characters other than,"-" (hyphen), "_" (underscore), "/" (backslash).
        attribute :timezone
        validates :timezone, type: String
      end
    end
  end
end
