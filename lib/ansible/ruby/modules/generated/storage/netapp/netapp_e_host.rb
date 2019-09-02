# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, remove hosts on NetApp E-series storage arrays
      class Netapp_e_host < Base
        # @return [String] If the host doesn't yet exist, the label/name to assign at creation time.,If the hosts already exists, this will be used to uniquely identify the host to make any required changes
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Set to absent to remove an existing host,Set to present to modify or create a new host definition
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Integer, nil] The index that maps to host type you wish to create. It is recommended to use the M(netapp_e_facts) module to gather this information. Alternatively you can use the WSP portal to retrieve the information.,Required when C(state=present)
        attribute :host_type_index
        validates :host_type_index, type: Integer

        # @return [Array<Hash>, Hash, nil] A list of host ports you wish to associate with the host.,Host ports are uniquely identified by their WWN or IQN. Their assignments to a particular host are uniquely identified by a label and these must be unique.
        attribute :ports
        validates :ports, type: TypeGeneric.new(Hash)

        # @return [Symbol, nil] Allow ports that are already assigned to be re-assigned to your current host
        attribute :force_port
        validates :force_port, type: Symbol

        # @return [Object, nil] The unique identifier of the host-group you want the host to be a member of; this is used for clustering.
        attribute :group

        # @return [Object, nil] A local path to a file to be used for debug logging
        attribute :log_path
      end
    end
  end
end
