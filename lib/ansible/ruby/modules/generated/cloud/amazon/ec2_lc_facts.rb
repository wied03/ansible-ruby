# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about AWS Autoscaling Launch Configurations
      class Ec2_lc_facts < Base
        # @return [Object, nil] A name or a list of name to match.
        attribute :name

        # @return [:launch_configuration_name, :image_id, :created_time, :instance_type, :kernel_id, :ramdisk_id, :key_name, nil] Optional attribute which with to sort the results.
        attribute :sort
        validates :sort, inclusion: {:in=>[:launch_configuration_name, :image_id, :created_time, :instance_type, :kernel_id, :ramdisk_id, :key_name], :message=>"%{value} needs to be :launch_configuration_name, :image_id, :created_time, :instance_type, :kernel_id, :ramdisk_id, :key_name"}, allow_nil: true

        # @return [:ascending, :descending, nil] Order in which to sort results.,Only used when the 'sort' parameter is specified.
        attribute :sort_order
        validates :sort_order, inclusion: {:in=>[:ascending, :descending], :message=>"%{value} needs to be :ascending, :descending"}, allow_nil: true

        # @return [Object, nil] Which result to start with (when sorting).,Corresponds to Python slice notation.
        attribute :sort_start

        # @return [Object, nil] Which result to end with (when sorting).,Corresponds to Python slice notation.
        attribute :sort_end
      end
    end
  end
end
