# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove licenses on NetApp ONTAP.
      class Na_ontap_license < Base
        # @return [:present, :absent, nil] Whether the specified license should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] Remove licenses that have no controller affiliation in the cluster.
        attribute :remove_unused
        validates :remove_unused, type: Symbol

        # @return [Symbol, nil] Remove licenses that have expired in the cluster.
        attribute :remove_expired
        validates :remove_expired, type: Symbol

        # @return [NilClass, nil] Serial number of the node associated with the license. This parameter is used primarily when removing license for a specific service.
        attribute :serial_number
        validates :serial_number, type: NilClass

        # @return [Array<String>, String, nil] List of license-names to delete.
        attribute :license_names
        validates :license_names, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of license codes to be added.
        attribute :license_codes
        validates :license_codes, type: TypeGeneric.new(String)
      end
    end
  end
end
