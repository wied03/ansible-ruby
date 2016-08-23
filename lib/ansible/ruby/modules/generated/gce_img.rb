# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gce_img < Base
        # @return [String] the name of the image to create or delete
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] an optional description
        attribute :description

        # @return [String] the source disk or the Google Cloud Storage URI to create the image from
        attribute :source
        validates :source, type: String

        # @return [String] desired state of the image
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] the zone of the disk specified by source
        attribute :zone
        validates :zone, type: String

        # @return [Fixnum] timeout for the operation
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [Object] service account email
        attribute :service_account_email

        # @return [Object] path to the pem file associated with the service account email
        attribute :pem_file

        # @return [Object] your GCE project ID
        attribute :project_id
      end
    end
  end
end
