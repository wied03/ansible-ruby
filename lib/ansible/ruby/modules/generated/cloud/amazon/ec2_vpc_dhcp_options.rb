# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module removes, or creates DHCP option sets, and can associate them to a VPC. Optionally, a new DHCP Options set can be created that converges a VPC's existing DHCP option set with values provided. When dhcp_options_id is provided, the module will 1. remove (with state='absent') 2. ensure tags are applied (if state='present' and tags are provided 3. attach it to a VPC (if state='present' and a vpc_id is provided. If any of the optional values are missing, they will either be treated as a no-op (i.e., inherit what already exists for the VPC) To remove existing options while inheriting, supply an empty value (e.g. set ntp_servers to [] if you want to remove them from the VPC's options) Most of the options should be self-explanatory.
      class Ec2_vpc_dhcp_option < Base
        # @return [String, nil] The domain name to set in the DHCP option sets
        attribute :domain_name
        validates :domain_name, type: String

        # @return [Array<String>, String, nil] A list of hosts to set the DNS servers for the VPC to. (Should be a list of IP addresses rather than host names.)
        attribute :dns_servers
        validates :dns_servers, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of hosts to advertise as NTP servers for the VPC.
        attribute :ntp_servers
        validates :ntp_servers, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of hosts to advertise as NetBIOS servers.
        attribute :netbios_name_servers
        validates :netbios_name_servers, type: TypeGeneric.new(String)

        # @return [Integer, nil] NetBIOS node type to advertise in the DHCP options. The AWS recommendation is to use 2 (when using netbios name services) http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html
        attribute :netbios_node_type
        validates :netbios_node_type, type: Integer

        # @return [String, nil] VPC ID to associate with the requested DHCP option set. If no vpc id is provided, and no matching option set is found then a new DHCP option set is created.
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [:yes, :no, nil] Whether to delete the old VPC DHCP option set when associating a new one. This is primarily useful for debugging/development purposes when you want to quickly roll back to the old option set. Note that this setting will be ignored, and the old DHCP option set will be preserved, if it is in use by any other VPC. (Otherwise, AWS will return an error.)
        attribute :delete_old
        validates :delete_old, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] For any DHCP options not specified in these parameters, whether to inherit them from the options set already applied to vpc_id, or to reset them to be empty.
        attribute :inherit_existing
        validates :inherit_existing, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash, nil] Tags to be applied to a VPC options set if a new one is created, or if the resource_id is provided. (options must match)
        attribute :tags
        validates :tags, type: Hash

        # @return [String, nil] The resource_id of an existing DHCP options set. If this is specified, then it will override other settings, except tags (which will be updated to match)
        attribute :dhcp_options_id
        validates :dhcp_options_id, type: String

        # @return [:absent, :present, nil] create/assign or remove the DHCP options. If state is set to absent, then a DHCP options set matched either by id, or tags and options will be removed if possible.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
