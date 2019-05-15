# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove ONTAP broadcast domain ports.  Existing ports that are not listed are kept.
      class Na_ontap_broadcast_domain_ports < Base
        # @return [:present, :absent, nil] Whether the specified broadcast domain should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Specify the broadcast_domain name
        attribute :broadcast_domain
        validates :broadcast_domain, presence: true, type: String

        # @return [Object, nil] Specify the ipspace for the broadcast domain
        attribute :ipspace

        # @return [String, nil] Specify the list of ports to add to or remove from this broadcast domain.
        attribute :ports
        validates :ports, type: String
      end
    end
  end
end
