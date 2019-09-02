# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and delete disk offerings for guest VMs.
      # Update display_text or display_offering of existing disk offering.
      class Cs_disk_offering < Base
        # @return [Integer, nil] Size of the disk offering in GB (1GB = 1,073,741,824 bytes).
        attribute :disk_size
        validates :disk_size, type: Integer

        # @return [Object, nil] Bytes read rate of the disk offering.
        attribute :bytes_read_rate

        # @return [Object, nil] Bytes write rate of the disk offering.
        attribute :bytes_write_rate

        # @return [String, nil] Display text of the disk offering.,If not set, C(name) will be used as C(display_text) while creating.
        attribute :display_text
        validates :display_text, type: String

        # @return [Object, nil] Domain the disk offering is related to.,Public for all domains and subdomains if not set.
        attribute :domain

        # @return [Object, nil] Hypervisor snapshot reserve space as a percent of a volume.,Only for managed storage using Xen or VMware.
        attribute :hypervisor_snapshot_reserve

        # @return [Symbol, nil] Whether disk offering iops is custom or not.
        attribute :customized
        validates :customized, type: Symbol

        # @return [Object, nil] IO requests read rate of the disk offering.
        attribute :iops_read_rate

        # @return [Object, nil] IO requests write rate of the disk offering.
        attribute :iops_write_rate

        # @return [Object, nil] Max. iops of the disk offering.
        attribute :iops_max

        # @return [Object, nil] Min. iops of the disk offering.
        attribute :iops_min

        # @return [String] Name of the disk offering.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:thin, :sparse, :fat, nil] Provisioning type used to create volumes.
        attribute :provisioning_type
        validates :provisioning_type, expression_inclusion: {:in=>[:thin, :sparse, :fat], :message=>"%{value} needs to be :thin, :sparse, :fat"}, allow_nil: true

        # @return [:present, :absent, nil] State of the disk offering.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:local, :shared, nil] The storage type of the disk offering.
        attribute :storage_type
        validates :storage_type, expression_inclusion: {:in=>[:local, :shared], :message=>"%{value} needs to be :local, :shared"}, allow_nil: true

        # @return [String, nil] The storage tags for this disk offering.
        attribute :storage_tags
        validates :storage_tags, type: String

        # @return [Symbol, nil] An optional field, whether to display the offering to the end user or not.
        attribute :display_offering
        validates :display_offering, type: Symbol
      end
    end
  end
end
