# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents an Instance Group resource. Instance groups are self-managed and can contain identical or different instances. Instance groups do not use an instance template. Unlike managed instance groups, you must create and add instances to an instance group manually.
      class Gcp_compute_instance_group < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [String, nil] The name of the instance group.,The name must be 1-63 characters long, and comply with RFC1035.
        attribute :name
        validates :name, type: String

        # @return [Array<Hash>, Hash, nil] Assigns a name to a port number.,For example: {name: "http", port: 80}.,This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports.,For example: [{name: "http", port: 80},{name: "http", port: 8080}]  Named ports apply to all instances in this instance group.
        attribute :named_ports
        validates :named_ports, type: TypeGeneric.new(Hash)

        # @return [String, nil] The network to which all instances in the instance group belong.
        attribute :network
        validates :network, type: String

        # @return [Object, nil] The region where the instance group is located (for regional resources).
        attribute :region

        # @return [Object, nil] The subnetwork to which all instances in the instance group belong.
        attribute :subnetwork

        # @return [String] A reference to the zone where the instance group resides.
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
