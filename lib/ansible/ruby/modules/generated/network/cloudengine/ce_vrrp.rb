# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VRRP interface attributes on HUAWEI CloudEngine devices.
      class Ce_vrrp < Base
        # @return [Object, nil] Name of an interface. The value is a string of 1 to 63 characters.
        attribute :interface

        # @return [String, nil] VRRP backup group ID. The value is an integer ranging from 1 to 255.
        attribute :vrid
        validates :vrid, type: String

        # @return [Object, nil] Virtual IP address. The value is a string of 0 to 255 characters.
        attribute :virtual_ip

        # @return [:normal, :member, :admin, nil] Type of a VRRP backup group.
        attribute :vrrp_type
        validates :vrrp_type, inclusion: {:in=>[:normal, :member, :admin], :message=>"%{value} needs to be :normal, :member, :admin"}, allow_nil: true

        # @return [String, nil] mVRRP ignores an interface Down event.
        attribute :admin_ignore_if_down
        validates :admin_ignore_if_down, type: String

        # @return [Object, nil] Tracked mVRRP ID. The value is an integer ranging from 1 to 255.
        attribute :admin_vrid

        # @return [Object, nil] Tracked mVRRP interface name. The value is a string of 1 to 63 characters.
        attribute :admin_interface

        # @return [String, nil] Disable the flowdown function for service VRRP.
        attribute :admin_flowdown
        validates :admin_flowdown, type: String

        # @return [Object, nil] Configured VRRP priority. The value ranges from 1 to 254. The default value is 100. A larger value indicates a higher priority.
        attribute :priority

        # @return [:v2, :v3, nil] VRRP version. The default version is v2.
        attribute :version
        validates :version, inclusion: {:in=>[:v2, :v3], :message=>"%{value} needs to be :v2, :v3"}, allow_nil: true

        # @return [Object, nil] Configured interval between sending advertisements, in milliseconds. Only the master router sends VRRP advertisements. The default value is 1000 milliseconds.
        attribute :advertise_interval

        # @return [Object, nil] Preemption delay. The value is an integer ranging from 0 to 3600. The default value is 0.
        attribute :preempt_timer_delay

        # @return [Object, nil] Interval at which gratuitous ARP packets are sent, in seconds. The value ranges from 30 to 1200.The default value is 300.
        attribute :gratuitous_arp_interval

        # @return [Object, nil] Delay in recovering after an interface goes Up. The delay is used for interface flapping suppression. The value is an integer ranging from 0 to 3600. The default value is 0 seconds.
        attribute :recover_delay

        # @return [Object, nil] The configured holdMultiplier.The value is an integer ranging from 3 to 10. The default value is 3.
        attribute :holding_multiplier

        # @return [:simple, :md5, :none, nil] Authentication type used for VRRP packet exchanges between virtual routers. The values are noAuthentication, simpleTextPassword, md5Authentication. The default value is noAuthentication.
        attribute :auth_mode
        validates :auth_mode, inclusion: {:in=>[:simple, :md5, :none], :message=>"%{value} needs to be :simple, :md5, :none"}, allow_nil: true

        # @return [String, nil] Select the display mode of an authentication key. By default, an authentication key is displayed in ciphertext.
        attribute :is_plain
        validates :is_plain, type: String

        # @return [Object, nil] This object is set based on the authentication type. When noAuthentication is specified, the value is empty. When simpleTextPassword or md5Authentication is specified, the value is a string of 1 to 8 characters in plaintext and displayed as a blank text for security.
        attribute :auth_key

        # @return [:enable, :disable, nil] mVRRP's fast resume mode.
        attribute :fast_resume
        validates :fast_resume, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
