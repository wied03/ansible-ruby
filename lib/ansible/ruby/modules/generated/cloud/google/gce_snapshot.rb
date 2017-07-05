# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages snapshots for GCE instances. This module manages snapshots for the storage volumes of a GCE compute instance. If there are multiple volumes, each snapshot will be prepended with the disk name
      class Gce_snapshot < Base
        # @return [String] The GCE instance to snapshot
        attribute :instance_name
        validates :instance_name, presence: true, type: String

        # @return [String, nil] The name of the snapshot to manage
        attribute :snapshot_name
        validates :snapshot_name, type: String

        # @return [String, nil] A list of disks to create snapshots for. If none is provided, all of the volumes will be snapshotted
        attribute :disks
        validates :disks, type: String

        # @return [:present, :absent, nil] Whether a snapshot should be C(present) or C(absent)
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] GCP service account email for the project where the instance resides
        attribute :service_account_email
        validates :service_account_email, presence: true, type: String

        # @return [String] The path to the credentials file associated with the service account
        attribute :credentials_file
        validates :credentials_file, presence: true, type: String

        # @return [String] The GCP project ID to use
        attribute :project_id
        validates :project_id, presence: true, type: String
      end
    end
  end
end
