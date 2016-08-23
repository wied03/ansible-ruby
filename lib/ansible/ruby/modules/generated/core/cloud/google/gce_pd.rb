# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gce_pd < Base
        # @return [:yes, :no, nil] do not destroy the disk, merely detach it from an instance
        attribute :detach_only
        validates :detach_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] instance name if you wish to attach or detach the disk
        attribute :instance_name
        validates :instance_name, type: String

        # @return [:READ_WRITE, :READ_ONLY, nil] GCE mount mode of disk, READ_ONLY (default) or READ_WRITE
        attribute :mode
        validates :mode, inclusion: {:in=>[:READ_WRITE, :READ_ONLY], :message=>"%{value} needs to be :READ_WRITE, :READ_ONLY"}, allow_nil: true

        # @return [String] name of the disk
        attribute :name
        validates :name, presence: true, type: String

        # @return [Fixnum] whole integer size of disk (in GB) to create, default is 10 GB
        attribute :size_gb
        validates :size_gb, type: Fixnum

        # @return [Object] the source image to use for the disk
        attribute :image

        # @return [Object] the source snapshot to use for the disk
        attribute :snapshot

        # @return [:active, :present, :absent, :deleted, nil] desired state of the persistent disk
        attribute :state
        validates :state, inclusion: {:in=>[:active, :present, :absent, :deleted], :message=>"%{value} needs to be :active, :present, :absent, :deleted"}, allow_nil: true

        # @return [String] zone in which to create the disk
        attribute :zone
        validates :zone, type: String

        # @return [Object] service account email
        attribute :service_account_email

        # @return [Object] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file

        # @return [Object] path to the JSON file associated with the service account email
        attribute :credentials_file

        # @return [Object] your GCE project ID
        attribute :project_id

        # @return [:"pd-standard", :"pd-ssd", nil] type of disk provisioned
        attribute :disk_type
        validates :disk_type, inclusion: {:in=>[:"pd-standard", :"pd-ssd"], :message=>"%{value} needs to be :\"pd-standard\", :\"pd-ssd\""}, allow_nil: true
      end
    end
  end
end
