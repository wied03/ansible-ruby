# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages AAA server host configuration on HUAWEI CloudEngine switches.
      class Ce_aaa_server_host < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Name of a local user. The value is a string of 1 to 253 characters.
        attribute :local_user_name

        # @return [Object, nil] Login password of a user. The password can contain letters, numbers, and special characters. The value is a string of 1 to 255 characters.
        attribute :local_password

        # @return [Object, nil] The type of local user login through, such as ftp ssh snmp telnet.
        attribute :local_service_type

        # @return [Object, nil] FTP user directory. The value is a string of 1 to 255 characters.
        attribute :local_ftp_dir

        # @return [Object, nil] Login level of a local user. The value is an integer ranging from 0 to 15.
        attribute :local_user_level

        # @return [Object, nil] Name of the user group where the user belongs. The user inherits all the rights of the user group. The value is a string of 1 to 32 characters.
        attribute :local_user_group

        # @return [Object, nil] RADIUS server group's name. The value is a string of 1 to 32 case-insensitive characters.
        attribute :radius_group_name

        # @return [:Authentication, :Accounting, nil] Type of Radius Server.
        attribute :radius_server_type
        validates :radius_server_type, inclusion: {:in=>[:Authentication, :Accounting], :message=>"%{value} needs to be :Authentication, :Accounting"}, allow_nil: true

        # @return [Object, nil] IPv4 address of configured server. The value is a string of 0 to 255 characters, in dotted decimal notation.
        attribute :radius_server_ip

        # @return [Object, nil] IPv6 address of configured server. The total length is 128 bits.
        attribute :radius_server_ipv6

        # @return [Object, nil] Configured server port for a particular server. The value is an integer ranging from 1 to 65535.
        attribute :radius_server_port

        # @return [:"Secondary-server", :"Primary-server", nil] Configured primary or secondary server for a particular server.
        attribute :radius_server_mode
        validates :radius_server_mode, inclusion: {:in=>[:"Secondary-server", :"Primary-server"], :message=>"%{value} needs to be :\"Secondary-server\", :\"Primary-server\""}, allow_nil: true

        # @return [Object, nil] Set VPN instance. The value is a string of 1 to 31 case-sensitive characters.
        attribute :radius_vpn_name

        # @return [Object, nil] Hostname of configured server. The value is a string of 0 to 255 case-sensitive characters.
        attribute :radius_server_name

        # @return [Object, nil] Name of a HWTACACS template. The value is a string of 1 to 32 case-insensitive characters.
        attribute :hwtacacs_template

        # @return [Object, nil] Server IPv4 address. Must be a valid unicast IP address. The value is a string of 0 to 255 characters, in dotted decimal notation.
        attribute :hwtacacs_server_ip

        # @return [Object, nil] Server IPv6 address. Must be a valid unicast IP address. The total length is 128 bits.
        attribute :hwtacacs_server_ipv6

        # @return [:Authentication, :Authorization, :Accounting, :Common, nil] Hwtacacs server type.
        attribute :hwtacacs_server_type
        validates :hwtacacs_server_type, inclusion: {:in=>[:Authentication, :Authorization, :Accounting, :Common], :message=>"%{value} needs to be :Authentication, :Authorization, :Accounting, :Common"}, allow_nil: true

        # @return [:yes, :no, nil] Whether the server is secondary.
        attribute :hwtacacs_is_secondary_server
        validates :hwtacacs_is_secondary_server, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] VPN instance name.
        attribute :hwtacacs_vpn_name

        # @return [:yes, :no, nil] Set the public-net.
        attribute :hwtacacs_is_public_net
        validates :hwtacacs_is_public_net, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Hwtacacs server host name.
        attribute :hwtacacs_server_host_name
      end
    end
  end
end
