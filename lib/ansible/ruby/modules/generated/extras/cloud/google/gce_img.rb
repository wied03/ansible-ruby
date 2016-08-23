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

        # @return [Object, nil] an optional description
        attribute :description

        # @return [String, nil] the source disk or the Google Cloud Storage URI to create the image from
        attribute :source
        validates :source, type: String

        # @return [:present, :absent, nil] desired state of the image
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] the zone of the disk specified by source
        attribute :zone
        validates :zone, type: String

        # @return [Integer, nil] timeout for the operation
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Object, nil] service account email
        attribute :service_account_email

        # @return [Object, nil] path to the pem file associated with the service account email
        attribute :pem_file

        # @return [Object, nil] your GCE project ID
        attribute :project_id
      end
    end
  end
end
