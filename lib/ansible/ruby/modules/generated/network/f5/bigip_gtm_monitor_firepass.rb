# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP GTM FirePass monitors.
      class Bigip_gtm_monitor_firepass < Base
        # @return [String] Monitor name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [String, nil] IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.,If this value is an IP address, then a C(port) number must be specified.
        attribute :ip
        validates :ip, type: String

        # @return [Integer, nil] Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] The interval specifying how frequently the monitor instance of this template will run.,If this parameter is not provided when creating a new monitor, then the default value will be 30.,This value B(must) be less than the C(timeout) value.
        attribute :interval

        # @return [Object, nil] The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.,If this parameter is not provided when creating a new monitor, then the default value will be 90.
        attribute :timeout

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the monitor exists.,When C(absent), ensures the monitor is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Specifies the number of seconds after which the system times out the probe request to the system.,When creating a new monitor, if this parameter is not provided, then the default value will be C(5).
        attribute :probe_timeout

        # @return [Symbol, nil] Specifies that the monitor allows more than one probe attempt per interval.,When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.,When C(no), specifies that the monitor immediately marks an object down when it receives a down response.,When creating a new monitor, if this parameter is not provided, then the default value will be C(no).
        attribute :ignore_down_response
        validates :ignore_down_response, type: Symbol

        # @return [Object, nil] Specifies the user name, if the monitored target requires authentication.
        attribute :target_username

        # @return [Object, nil] Specifies the password, if the monitored target requires authentication.
        attribute :target_password

        # @return [:always, :on_create, nil] C(always) will update passwords if the C(target_password) is specified.,C(on_create) will only set the password for newly created monitors.
        attribute :update_password
        validates :update_password, expression_inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [Object, nil] Specifies the list of ciphers for this monitor.,The items in the cipher list are separated with the colon C(:) symbol.,When creating a new monitor, if this parameter is not specified, the default list is C(HIGH:!ADH).
        attribute :cipher_list

        # @return [Object, nil] Specifies the number that the monitor uses to mark the Secure Access Manager system up or down.,The system compares the Max Load Average setting against a one-minute average of the Secure Access Manager system load.,When the Secure Access Manager system-load average falls within the specified Max Load Average, the monitor marks the Secure Access Manager system up.,When the average exceeds the setting, the monitor marks the system down.,When creating a new monitor, if this parameter is not specified, the default is C(12).
        attribute :max_load_average

        # @return [Object, nil] Specifies the maximum percentage of licensed connections currently in use under which the monitor marks the Secure Access Manager system up.,As an example, a setting of 95 percent means that the monitor marks the Secure Access Manager system up until 95 percent of licensed connections are in use.,When the number of in-use licensed connections exceeds 95 percent, the monitor marks the Secure Access Manager system down.,When creating a new monitor, if this parameter is not specified, the default is C(95).
        attribute :concurrency_limit
      end
    end
  end
end
