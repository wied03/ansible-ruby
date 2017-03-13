# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can create and destroy Google Compute Engine networks and firewall rules U(https://developers.google.com/compute/docs/networking). The I(name) parameter is reserved for referencing a network while the I(fwname) parameter is used to reference firewall rules. IPv4 Address ranges must be specified using the CIDR U(http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) format. Full install/configuration instructions for the gce* modules can be found in the comments of ansible/test/gce_tests.py.
      class Gce_net < Base
        # @return [Array<String>, String, nil] the protocol:ports to allow ('tcp:80' or 'tcp:80,443' or 'tcp:80-800;udp:1-25') this parameter is mandatory when creating or updating a firewall rule
        attribute :allowed
        validates :allowed, type: TypeGeneric.new(String)

        # @return [String, nil] the IPv4 address range in CIDR notation for the network this parameter is not mandatory when you specified existing network in name parameter, but when you create new network, this parameter is mandatory
        attribute :ipv4_range
        validates :ipv4_range, type: String

        # @return [String, nil] name of the firewall rule
        attribute :fwname
        validates :fwname, type: String

        # @return [String, nil] name of the network
        attribute :name
        validates :name, type: String

        # @return [Object, nil] the source IPv4 address range in CIDR notation
        attribute :src_range

        # @return [Array<String>, String, nil] the source instance tags for creating a firewall rule
        attribute :src_tags
        validates :src_tags, type: TypeGeneric.new(String)

        # @return [Object, nil] the target instance tags for creating a firewall rule
        attribute :target_tags

        # @return [:active, :present, :absent, :deleted, nil] desired state of the network or firewall
        attribute :state
        validates :state, inclusion: {:in=>[:active, :present, :absent, :deleted], :message=>"%{value} needs to be :active, :present, :absent, :deleted"}, allow_nil: true

        # @return [Object, nil] service account email
        attribute :service_account_email

        # @return [Object, nil] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file

        # @return [Object, nil] path to the JSON file associated with the service account email
        attribute :credentials_file

        # @return [Object, nil] your GCE project ID
        attribute :project_id

        # @return [:legacy, :auto, :custom, nil] network mode for Google Cloud "legacy" indicates a network with an IP address range "auto" automatically generates subnetworks in different regions "custom" uses networks to group subnets of user specified IP address ranges https://cloud.google.com/compute/docs/networking#network_types
        attribute :mode
        validates :mode, inclusion: {:in=>[:legacy, :auto, :custom], :message=>"%{value} needs to be :legacy, :auto, :custom"}, allow_nil: true

        # @return [String, nil] name of subnet to create
        attribute :subnet_name
        validates :subnet_name, type: String

        # @return [String, nil] region of subnet to create
        attribute :subnet_region
        validates :subnet_region, type: String

        # @return [Object, nil] description of subnet to create
        attribute :subnet_desc
      end
    end
  end
end
