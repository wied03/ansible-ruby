# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, remove snapshot volumes for NetApp E/EF-Series storage arrays.
      class Netapp_e_snapshot_volume < Base
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

        # @return [String] storage array ID
        attribute :ssid
        validates :ssid, presence: true, type: String

        # @return [String] The identifier of the snapshot image used to create the new snapshot volume.,Note: You'll likely want to use the M(netapp_e_facts) module to find the ID of the image you want.
        attribute :snapshot_image_id
        validates :snapshot_image_id, presence: true, type: String

        # @return [Integer, nil] The repository utilization warning threshold percentage
        attribute :full_threshold
        validates :full_threshold, type: Integer

        # @return [String] The name you wish to give the snapshot volume
        attribute :name
        validates :name, presence: true, type: String

        # @return [:modeUnknown, :readWrite, :readOnly, :__UNDEFINED] The snapshot volume access mode
        attribute :view_mode
        validates :view_mode, presence: true, inclusion: {:in=>[:modeUnknown, :readWrite, :readOnly, :__UNDEFINED], :message=>"%{value} needs to be :modeUnknown, :readWrite, :readOnly, :__UNDEFINED"}

        # @return [Integer, nil] The size of the view in relation to the size of the base volume
        attribute :repo_percentage
        validates :repo_percentage, type: Integer

        # @return [String] Name of the storage pool on which to allocate the repository volume.
        attribute :storage_pool_name
        validates :storage_pool_name, presence: true, type: String

        # @return [:absent, :present] Whether to create or remove the snapshot volume
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}
      end
    end
  end
end
