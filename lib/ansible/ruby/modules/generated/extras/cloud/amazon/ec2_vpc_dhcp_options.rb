# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_vpc_dhcp_options < Base
        # @return [String] The domain name to set in the DHCP option sets
        attribute :domain_name
        validates :domain_name, type: String

        # @return [String] A list of hosts to set the DNS servers for the VPC to. (Should be a list of IP addresses rather than host names.)
        attribute :dns_servers
        validates :dns_servers, type: String

        # @return [String] List of hosts to advertise as NTP servers for the VPC.
        attribute :ntp_servers
        validates :ntp_servers, type: String

        # @return [String] List of hosts to advertise as NetBIOS servers.
        attribute :netbios_name_servers
        validates :netbios_name_servers, type: String

        # @return [String] NetBIOS node type to advertise in the DHCP options. The AWS recommendation is to use 2 (when using netbios name services) http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html
        attribute :netbios_node_type
        validates :netbios_node_type, type: String

        # @return [String] VPC ID to associate with the requested DHCP option set. If no vpc id is provided, and no matching option set is found then a new DHCP option set is created.
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [TrueClass] Whether to delete the old VPC DHCP option set when associating a new one. This is primarily useful for debugging/development purposes when you want to quickly roll back to the old option set. Note that this setting will be ignored, and the old DHCP option set will be preserved, if it is in use by any other VPC. (Otherwise, AWS will return an error.)
        attribute :delete_old
        validates :delete_old, type: TrueClass

        # @return [TrueClass] For any DHCP options not specified in these parameters, whether to inherit them from the options set already applied to vpc_id, or to reset them to be empty.
        attribute :inherit_existing
        validates :inherit_existing, type: TrueClass

        # @return [String] Tags to be applied to a VPC options set if a new one is created, or if the resource_id is provided. (options must match)
        attribute :tags
        validates :tags, type: String

        # @return [String] The resource_id of an existing DHCP options set. If this is specified, then it will override other settings, except tags (which will be updated to match)
        attribute :dhcp_options_id
        validates :dhcp_options_id, type: String

        # @return [String] create/assign or remove the DHCP options. If state is set to absent, then a DHCP options set matched either by id, or tags and options will be removed if possible.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
