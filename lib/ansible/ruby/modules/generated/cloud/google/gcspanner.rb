# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and Delete Instances/Databases on Spanner. See U(https://cloud.google.com/spanner/docs) for an overview.
      class Gcspanner < Base
        # @return [String] Configuration the instance should use.,Examples are us-central1, asia-east1 and europe-west1.
        attribute :configuration
        validates :configuration, presence: true, type: String

        # @return [String] GCP spanner instance name.
        attribute :instance_id
        validates :instance_id, presence: true, type: String

        # @return [String, nil] Name of database contained on the instance.
        attribute :database_name
        validates :database_name, type: String

        # @return [:yes, :no, nil] To delete an instance, this argument must exist and be true (along with state being equal to absent).
        attribute :force_instance_delete
        validates :force_instance_delete, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Name of Instance to display.,If not specified, instance_id will be used instead.
        attribute :instance_display_name

        # @return [Integer, nil] Number of nodes in the instance.
        attribute :node_count
        validates :node_count, type: Integer

        # @return [:absent, :present, nil] State of the instance or database. Applies to the most granular resource.,If a C(database_name) is specified we remove it.,If only C(instance_id) is specified, that is what is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
