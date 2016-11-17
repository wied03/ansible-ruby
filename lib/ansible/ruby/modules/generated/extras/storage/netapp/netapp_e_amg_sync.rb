# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for the initialization, suspension and resumption of an asynchronous mirror group's synchronization for NetApp E-series storage arrays.
      class Netapp_e_amg_sync < Base
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

        # @return [String, nil] The ID of the storage array containing the AMG you wish to target
        attribute :ssid
        validates :ssid, type: String

        # @return [String] The name of the async mirror group you wish to target
        attribute :name
        validates :name, presence: true, type: String

        # @return [:running, :suspended] The synchronization action you'd like to take.,If C(running) then it will begin syncing if there is no active sync or will resume a suspended sync. If there is already a sync in progress, it will return with an OK status.,If C(suspended) it will suspend any ongoing sync action, but return OK if there is no active sync or if the sync is already suspended
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:running, :suspended], :message=>"%{value} needs to be :running, :suspended"}

        # @return [Boolean, nil] Indicates whether the failures point can be deleted on the secondary if necessary to achieve the synchronization.,If true, and if the amount of unsynchronized data exceeds the CoW repository capacity on the secondary for any member volume, the last failures point will be deleted and synchronization will continue.,If false, the synchronization will be suspended if the amount of unsynchronized data exceeds the CoW Repository capacity on the secondary and the failures point will be preserved.,NOTE: This only has impact for newly launched syncs.
        attribute :delete_recovery_point
        validates :delete_recovery_point, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
