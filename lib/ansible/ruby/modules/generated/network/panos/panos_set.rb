# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Run an arbitrary 'xapi' command taking an XPath (i.e get) or XPath and element (i.e set).
      # See https://github.com/kevinsteves/pan-python/blob/master/doc/pan.xapi.rst for details
      # Runs a 'set' command by default
      # This should support _all_ commands that your PAN-OS device accepts vi it's cli
      # cli commands are found as
      # Once logged in issue 'debug cli on'
      # Enter configuration mode by issuing 'configure'
      # Enter your set (or other) command, for example 'set deviceconfig system timezone Australia/Melbourne'
      # returns
      # "<request cmd="set" obj="/config/devices/entry[@name='localhost.localdomain']/deviceconfig/system" cookie=XXXX><timezone>Australia/Melbourne</timezone></request>

      # The 'xpath' is  "/config/devices/entry[@name='localhost.localdomain']/deviceconfig/system"
      # The 'element' is "<timezone>Australia/Melbourne</timezone>"
      class Panos_set < Base
        # @return [String] IP address or host FQDN of the target PAN-OS NVA
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] User name for a user with admin rights on the PAN-OS NVA
        attribute :username
        validates :username, type: String

        # @return [String] Password for the given 'username'
        attribute :password
        validates :password, presence: true, type: String

        # @return [:set, :edit, :delete, :get, :show, :override, nil] Xapi method name which supports 'xpath' or 'xpath' and 'element'
        attribute :command
        validates :command, inclusion: {:in=>[:set, :edit, :delete, :get, :show, :override], :message=>"%{value} needs to be :set, :edit, :delete, :get, :show, :override"}, allow_nil: true

        # @return [String] The 'xpath' for the commands configurable
        attribute :xpath
        validates :xpath, presence: true, type: String

        # @return [String, nil] The 'element' for the 'xpath' if required
        attribute :element
        validates :element, type: String
      end
    end
  end
end
