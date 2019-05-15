# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service.
      class Gcp_dns_managed_zone < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The DNS name of this managed zone, for instance "example.com.".
        attribute :dns_name
        validates :dns_name, type: String

        # @return [String] User assigned name for this resource.,Must be unique within the project.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users will leave this field unset.
        attribute :name_server_set
      end
    end
  end
end
