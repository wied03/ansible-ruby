# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages external LTM monitors on a BIG-IP.
      class Bigip_monitor_external < Base
        # @return [String] Specifies the name of the monitor.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The description of the monitor.
        attribute :description

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(http) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [Object, nil] Specifies any command-line arguments that the script requires.
        attribute :arguments

        # @return [Object, nil] IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
        attribute :ip

        # @return [Object, nil] Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.
        attribute :port

        # @return [Object, nil] Specifies the name of the file for the monitor to use. In order to reference a file, you must first import it using options on the System > File Management > External Monitor Program File List > Import screen. The BIG-IP system automatically places the file in the proper location on the file system.
        attribute :external_program

        # @return [Object, nil] The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.
        attribute :interval

        # @return [Integer, nil] The number of seconds in which the node or service must respond to the monitor request.,If the target responds within the set time period, it is considered up.,If the target does not respond within the set time period, it is considered down.,You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.,If this parameter is not provided when creating a new monitor, then the default value will be C(16).
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Hash, nil] Specifies any variables that the script requires.,Note that double quotes in values will be suppressed.
        attribute :variables
        validates :variables, type: Hash

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the monitor exists.,When C(absent), ensures the monitor is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
