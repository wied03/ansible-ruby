# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages IGMP global configuration configuration settings.
      class Nxos_igmp < Base
        # @return [:true, :false, nil] Removes routes when the IGMP process is restarted. By default, routes are not flushed.
        attribute :flush_routes
        validates :flush_routes, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Enables or disables the enforce router alert option check for IGMPv2 and IGMPv3 packets.
        attribute :enforce_rtr_alert
        validates :enforce_rtr_alert, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Restarts the igmp process (using an exec config command).
        attribute :restart
        validates :restart, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:present, :default, nil] Manages desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :default], :message=>"%{value} needs to be :present, :default"}, allow_nil: true
      end
    end
  end
end
