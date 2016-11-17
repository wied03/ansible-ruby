# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and delete snapshots images on snapshot groups for NetApp E-series storage arrays.
      # Only the oldest snapshot image can be deleted so consistency is preserved.
      # Related: Snapshot volumes are created from snapshot images.
      class Netapp_e_snapshot_images < Base
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

        # @return [String] The name of the snapshot group in which you want to create a snapshot image.
        attribute :snapshot_group
        validates :snapshot_group, presence: true, type: String

        # @return [:create, :remove] Whether a new snapshot image should be created or oldest be deleted.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:create, :remove], :message=>"%{value} needs to be :create, :remove"}
      end
    end
  end
end
