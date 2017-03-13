# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and delete snapshots images on volume groups for NetApp E-series storage arrays.
      class Netapp_e_volume_copy < Base
        # @return [Object] The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_username
        validates :api_username, presence: true

        # @return [Object] The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_password
        validates :api_password, presence: true

        # @return [Object] The url to the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_url
        validates :api_url, presence: true

        # @return [Boolean, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The the id of the volume copy source.,If used, must be paired with destination_volume_id,Mutually exclusive with volume_copy_pair_id, and search_volume_id
        attribute :source_volume_id

        # @return [Object, nil] The the id of the volume copy destination.,If used, must be paired with source_volume_id,Mutually exclusive with volume_copy_pair_id, and search_volume_id
        attribute :destination_volume_id

        # @return [Object, nil] The the id of a given volume copy pair,Mutually exclusive with destination_volume_id, source_volume_id, and search_volume_id,Can use to delete or check presence of volume pairs,Must specify this or (destination_volume_id and source_volume_id)
        attribute :volume_copy_pair_id

        # @return [:present, :absent] Whether the specified volume copy pair should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Boolean, nil] Defines if a copy pair will be created if it does not exist.,If set to True destination_volume_id and source_volume_id are required.
        attribute :create_copy_pair_if_does_not_exist
        validates :create_copy_pair_if_does_not_exist, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] starts a re-copy or stops a copy in progress,Note: If you stop the initial file copy before it it done the copy pair will be destroyed,Requires volume_copy_pair_id
        attribute :start_stop_copy

        # @return [Object, nil] Searches for all valid potential target and source volumes that could be used in a copy_pair,Mutually exclusive with volume_copy_pair_id, destination_volume_id and source_volume_id
        attribute :search_volume_id
      end
    end
  end
end
