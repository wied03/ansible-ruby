# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An instance is a virtual machine (VM) hosted on Google's infrastructure.
      class Gcp_compute_instance < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes.
        attribute :can_ip_forward
        validates :can_ip_forward, type: Symbol

        # @return [Array<Hash>, Hash, nil] An array of disks that are associated with the instances that are created from this template.
        attribute :disks
        validates :disks, type: TypeGeneric.new(Hash)

        # @return [Object, nil] List of the type and count of accelerator cards attached to the instance .
        attribute :guest_accelerators

        # @return [Object, nil] A fingerprint for this request, which is essentially a hash of the metadata's contents and used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update metadata. You must always provide an up-to-date fingerprint hash in order to update or change metadata.
        attribute :label_fingerprint

        # @return [Hash, nil] The metadata key/value pairs to assign to instances that are created from this template. These pairs can consist of custom metadata or predefined keys.
        attribute :metadata
        validates :metadata, type: Hash

        # @return [String, nil] A reference to a machine type which defines VM kind.
        attribute :machine_type
        validates :machine_type, type: String

        # @return [Object, nil] Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms .
        attribute :min_cpu_platform

        # @return [String, nil] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, type: String

        # @return [Array<Hash>, Hash, nil] An array of configurations for this interface. This specifies how this interface is configured to interact with other network services, such as connecting to the internet. Only one network interface is supported per instance.
        attribute :network_interfaces
        validates :network_interfaces, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Sets the scheduling options for this instance.
        attribute :scheduling

        # @return [Object, nil] A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported.
        attribute :service_accounts

        # @return [Object, nil] A list of tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035.
        attribute :tags

        # @return [String] A reference to the zone where the machine resides.
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
