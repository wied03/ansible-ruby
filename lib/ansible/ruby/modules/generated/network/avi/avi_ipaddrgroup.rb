# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure IpAddrGroup object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_ipaddrgroup < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Configure ip address(es).
        attribute :addrs

        # @return [Object, nil] Populate ip addresses from members of this cisco apic epg.
        attribute :apic_epg_name

        # @return [Object, nil] Populate the ip address ranges from the geo database for this country.
        attribute :country_codes

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Configure (ip address, port) tuple(s).
        attribute :ip_ports

        # @return [Object, nil] Populate ip addresses from tasks of this marathon app.
        attribute :marathon_app_name

        # @return [Object, nil] Task port associated with marathon service port.,If marathon app has multiple service ports, this is required.,Else, the first task port is used.
        attribute :marathon_service_port

        # @return [String] Name of the ip address group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] Configure ip address prefix(es).
        attribute :prefixes
        validates :prefixes, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Configure ip address range(s).
        attribute :ranges

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the ip address group.
        attribute :uuid
      end
    end
  end
end
