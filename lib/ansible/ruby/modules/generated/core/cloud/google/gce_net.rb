# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gce_net < Base
        # @return [Array<String>] the protocol:ports to allow ('tcp:80' or 'tcp:80,443' or 'tcp:80-800;udp:1-25')
        attribute :allowed, flat_array: true
        validates :allowed, type: TypeGeneric.new(String)

        # @return [String] the IPv4 address range in CIDR notation for the network this parameter is not mandatory when you specified existing network in name parameter, but when you create new network, this parameter is mandatory
        attribute :ipv4_range
        validates :ipv4_range, type: String

        # @return [String] name of the firewall rule
        attribute :fwname
        validates :fwname, type: String

        # @return [String] name of the network
        attribute :name
        validates :name, type: String

        # @return [Object] the source IPv4 address range in CIDR notation
        attribute :src_range

        # @return [Array] the source instance tags for creating a firewall rule
        attribute :src_tags
        validates :src_tags, type: Array

        # @return [Object] the target instance tags for creating a firewall rule
        attribute :target_tags

        # @return [:active, :present, :absent, :deleted, nil] desired state of the network or firewall
        attribute :state
        validates :state, inclusion: {:in=>[:active, :present, :absent, :deleted], :message=>"%{value} needs to be :active, :present, :absent, :deleted"}, allow_nil: true

        # @return [Object] service account email
        attribute :service_account_email

        # @return [Object] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file

        # @return [Object] path to the JSON file associated with the service account email
        attribute :credentials_file

        # @return [Object] your GCE project ID
        attribute :project_id
      end
    end
  end
end
