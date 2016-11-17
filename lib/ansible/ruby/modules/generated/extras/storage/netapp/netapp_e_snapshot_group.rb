# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, delete snapshot groups for NetApp E-series storage arrays
      class Netapp_e_snapshot_group < Base
        # @return [String] The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_username
        validates :api_username, presence: true, type: String

        # @return [String] The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_password
        validates :api_password, presence: true, type: String

        # @return [String] The url to the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_url
        validates :api_url, presence: true, type: String

        # @return [Boolean, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent] Whether to ensure the group is present or absent.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object] The name to give the snapshot group
        attribute :name
        validates :name, presence: true

        # @return [String] The name of the base volume or thin volume to use as the base for the new snapshot group.,If a snapshot group with an identical C(name) already exists but with a different base volume an error will be returned.
        attribute :base_volume_name
        validates :base_volume_name, presence: true, type: String

        # @return [Integer, nil] The size of the repository in relation to the size of the base volume
        attribute :repo_pct
        validates :repo_pct, type: Integer

        # @return [Integer, nil] The repository utilization warning threshold, as a percentage of the repository volume capacity.
        attribute :warning_threshold
        validates :warning_threshold, type: Integer

        # @return [Integer, nil] The automatic deletion indicator.,If non-zero, the oldest snapshot image will be automatically deleted when creating a new snapshot image to keep the total number of snapshot images limited to the number specified.,This value is overridden by the consistency group setting if this snapshot group is associated with a consistency group.
        attribute :delete_limit
        validates :delete_limit, type: Integer

        # @return [:purgepit, :unknown, :failbasewrites, :__UNDEFINED, nil] The behavior on when the data repository becomes full.,This value is overridden by consistency group setting if this snapshot group is associated with a consistency group
        attribute :full_policy
        validates :full_policy, inclusion: {:in=>[:purgepit, :unknown, :failbasewrites, :__UNDEFINED], :message=>"%{value} needs to be :purgepit, :unknown, :failbasewrites, :__UNDEFINED"}, allow_nil: true

        # @return [String] The name of the storage pool on which to allocate the repository volume.
        attribute :storage_pool_name
        validates :storage_pool_name, presence: true, type: String

        # @return [:highest, :high, :medium, :low, :lowest, :__UNDEFINED, nil] The importance of the rollback operation.,This value is overridden by consistency group setting if this snapshot group is associated with a consistency group
        attribute :rollback_priority
        validates :rollback_priority, inclusion: {:in=>[:highest, :high, :medium, :low, :lowest, :__UNDEFINED], :message=>"%{value} needs to be :highest, :high, :medium, :low, :lowest, :__UNDEFINED"}, allow_nil: true
      end
    end
  end
end
