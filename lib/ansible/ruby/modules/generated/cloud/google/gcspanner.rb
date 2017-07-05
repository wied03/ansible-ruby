# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and Delete Instances/Databases on Spanner. See U(https://cloud.google.com/spanner/docs) for an overview.
      class Gcspanner < Base
        # @return [Object] Configuration the instance should use. Examples are us-central1, asia-east1 and europe-west1.
        attribute :configuration
        validates :configuration, presence: true

        # @return [Object] GCP spanner instance name.
        attribute :instance_id
        validates :instance_id, presence: true

        # @return [Object, nil] Name of database contained on the instance.
        attribute :database_name

        # @return [Boolean, nil] To delete an instance, this argument must exist and be true (along with state being equal to absent).
        attribute :force_instance_delete
        validates :force_instance_delete, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Name of Instance to display.  If not specified, instance_id will be used instead.
        attribute :instance_display_name

        # @return [Object, nil] Number of nodes in the instance.  If not specified while creating an instance, node_count will be set to 1.
        attribute :node_count

        # @return [String, nil] State of the instance or database (absent, present). Applies to the most granular resource. If a database_name is specified we remove it.  If only instance_id is specified, that is what is removed.
        attribute :state
        validates :state, type: String
      end
    end
  end
end
