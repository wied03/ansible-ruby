# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Update or Destroy GCE Labels on instances, disks, snapshots, etc. When specifying the GCE resource, users may specifiy the full URL for the resource (its 'self_link'), or the individual parameters of the resource (type, location, name). Examples for the two options can be seen in the documentaion. See U(https://cloud.google.com/compute/docs/label-or-tag-resources) for more information about GCE Labels. Labels are gradually being added to more GCE resources, so this module will need to be updated as new resources are added to the GCE (v1) API.
      class Gce_labels < Base
        # @return [Hash, nil] A list of labels (key/value pairs) to add or remove for the resource.
        attribute :labels
        validates :labels, type: Hash

        # @return [String, nil] The 'self_link' for the resource (instance, disk, snapshot, etc)
        attribute :resource_url
        validates :resource_url, type: String

        # @return [String, nil] The type of resource (instances, disks, snapshots, images)
        attribute :resource_type
        validates :resource_type, type: String

        # @return [String, nil] The location of resource (global, us-central1-f, etc.)
        attribute :resource_location
        validates :resource_location, type: String

        # @return [String, nil] The name of resource.
        attribute :resource_name
        validates :resource_name, type: String
      end
    end
  end
end
