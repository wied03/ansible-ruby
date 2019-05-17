# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove licenses on NetApp ONTAP.
      class Na_cdot_license < Base
        # @return [Symbol, nil] Remove licenses that have no controller affiliation in the cluster.
        attribute :remove_unused
        validates :remove_unused, type: Symbol

        # @return [Symbol, nil] Remove licenses that have expired in the cluster.
        attribute :remove_expired
        validates :remove_expired, type: Symbol

        # @return [NilClass, nil] Serial number of the node associated with the license.,This parameter is used primarily when removing license for a specific service.,If this parameter is not provided, the cluster serial number is used by default.
        attribute :serial_number
        validates :serial_number, type: NilClass

        # @return [Hash, nil] List of licenses to add or remove.,Please note that trying to remove a non-existent license will throw an error.
        attribute :licenses
        validates :licenses, type: Hash
      end
    end
  end
end
