# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_pod < Base
        # @return [String] Name of the pod.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] uuid of the exising pod.
        attribute :id

        # @return [String, nil] Starting IP address for the Pod.,Required on C(state=present)
        attribute :start_ip
        validates :start_ip, type: String

        # @return [Object, nil] Ending IP address for the Pod.
        attribute :end_ip

        # @return [String, nil] Netmask for the Pod.,Required on C(state=present)
        attribute :netmask
        validates :netmask, type: String

        # @return [String, nil] Gateway for the Pod.,Required on C(state=present)
        attribute :gateway
        validates :gateway, type: String

        # @return [String, nil] Name of the zone in which the pod belongs to.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [:present, :enabled, :disabled, :absent, nil] State of the pod.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :enabled, :disabled, :absent], :message=>"%{value} needs to be :present, :enabled, :disabled, :absent"}, allow_nil: true
      end
    end
  end
end
