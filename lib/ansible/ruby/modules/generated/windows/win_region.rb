# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set the location settings of a Windows Server.
      # Set the format settings of a Windows Server.
      # Set the unicode language settings of a Windows Server.
      # Copy across these settings to the default profile.
      class Win_region < Base
        # @return [Integer, nil] The location to set for the current user, see U(https://msdn.microsoft.com/en-us/library/dd374073.aspx) for a list of GeoIDs you can use and what location it relates to. This needs to be set if C(format) or C(unicode_language) is not set.
        attribute :location
        validates :location, type: Integer

        # @return [String, nil] The language format to set for the current user, see U(https://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.aspx) for a list of culture names to use. This needs to be set if C(location) or C(unicode_language) is not set.
        attribute :format
        validates :format, type: String

        # @return [String, nil] The unicode language format to set for all users, see U(https://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.aspx) for a list of culture names to use. This needs to be set if C(location) or C(format) is not set. After setting this value a reboot is required for it to take effect.
        attribute :unicode_language
        validates :unicode_language, type: String

        # @return [:yes, :no, nil] This will copy the current format and location values to new user profiles and the welcome screen. This will only run if C(location), C(format) or C(unicode_language) has resulted in a change. If this process runs then it will always result in a change.
        attribute :copy_settings
        validates :copy_settings, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
