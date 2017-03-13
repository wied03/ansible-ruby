# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can create and destroy unformatted GCE persistent disks U(https://developers.google.com/compute/docs/disks#persistentdisks). It also supports attaching and detaching disks from running instances. Full install/configuration instructions for the gce* modules can be found in the comments of ansible/test/gce_tests.py.
      class Gce_pd < Base
        # @return [:yes, :no, nil] do not destroy the disk, merely detach it from an instance
        attribute :detach_only
        validates :detach_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] instance name if you wish to attach or detach the disk
        attribute :instance_name
        validates :instance_name, type: String

        # @return [:READ_WRITE, :READ_ONLY, nil] GCE mount mode of disk, READ_ONLY (default) or READ_WRITE
        attribute :mode
        validates :mode, inclusion: {:in=>[:READ_WRITE, :READ_ONLY], :message=>"%{value} needs to be :READ_WRITE, :READ_ONLY"}, allow_nil: true

        # @return [String] name of the disk
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] whole integer size of disk (in GB) to create, default is 10 GB
        attribute :size_gb
        validates :size_gb, type: Integer

        # @return [Object, nil] the source image to use for the disk
        attribute :image

        # @return [Object, nil] the source snapshot to use for the disk
        attribute :snapshot

        # @return [:active, :present, :absent, :deleted, nil] desired state of the persistent disk
        attribute :state
        validates :state, inclusion: {:in=>[:active, :present, :absent, :deleted], :message=>"%{value} needs to be :active, :present, :absent, :deleted"}, allow_nil: true

        # @return [String, nil] zone in which to create the disk
        attribute :zone
        validates :zone, type: String

        # @return [Object, nil] service account email
        attribute :service_account_email

        # @return [Object, nil] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file

        # @return [Object, nil] path to the JSON file associated with the service account email
        attribute :credentials_file

        # @return [Object, nil] your GCE project ID
        attribute :project_id

        # @return [:"pd-standard", :"pd-ssd", nil] type of disk provisioned
        attribute :disk_type
        validates :disk_type, inclusion: {:in=>[:"pd-standard", :"pd-ssd"], :message=>"%{value} needs to be :\"pd-standard\", :\"pd-ssd\""}, allow_nil: true
      end
    end
  end
end
