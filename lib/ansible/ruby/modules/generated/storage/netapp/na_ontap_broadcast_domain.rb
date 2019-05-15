# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify a ONTAP broadcast domain.
      class Na_ontap_broadcast_domain < Base
        # @return [:present, :absent, nil] Whether the specified broadcast domain should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Specify the broadcast_domain name
        attribute :broadcast_domain
        validates :broadcast_domain, presence: true, type: String

        # @return [String, nil] Specify the required mtu for the broadcast domain
        attribute :mtu
        validates :mtu, type: String

        # @return [String, nil] Specify the required ipspace for the broadcast domain.,A domain ipspace can not be modified after the domain has been created
        attribute :ipspace
        validates :ipspace, type: String

        # @return [Array<String>, String, nil] Specify the ports associated with this broadcast domain. Should be comma separated
        attribute :ports
        validates :ports, type: TypeGeneric.new(String)
      end
    end
  end
end
