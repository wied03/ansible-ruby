# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can add or remove tags U(https://cloud.google.com/compute/docs/instances/#tags) to/from GCE instance.
      class Gce_tag < Base
        # @return [String] the name of the GCE instance to add/remove tags
        attribute :instance_name
        validates :instance_name, presence: true, type: String

        # @return [Array<String>, String] comma-separated list of tags to add or remove
        attribute :tags
        validates :tags, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] desired state of the tags
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] the zone of the disk specified by source
        attribute :zone
        validates :zone, type: String

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
