# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can add or remove tags U(https://cloud.google.com/compute/docs/label-or-tag-resources#tags) to/from GCE instances.  Use 'instance_pattern' to update multiple instances in a specify zone.
      class Gce_tag < Base
        # @return [String, nil] The name of the GCE instance to add/remove tags.,Required if C(instance_pattern) is not specified.
        attribute :instance_name
        validates :instance_name, type: String

        # @return [String, nil] The pattern of GCE instance names to match for adding/removing tags.  Full-Python regex is supported. See U(https://docs.python.org/2/library/re.html) for details.,If C(instance_name) is not specified, this field is required.
        attribute :instance_pattern
        validates :instance_pattern, type: String

        # @return [Array<String>, String] Comma-separated list of tags to add or remove.
        attribute :tags
        validates :tags, presence: true, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] Desired state of the tags.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The zone of the disk specified by source.
        attribute :zone
        validates :zone, type: String

        # @return [Object, nil] Service account email.
        attribute :service_account_email

        # @return [Object, nil] Path to the PEM file associated with the service account email.
        attribute :pem_file

        # @return [Object, nil] Your GCE project ID.
        attribute :project_id
      end
    end
  end
end
