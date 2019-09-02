# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or join or apply licenses to ONTAP clusters
      class Na_ontap_cluster < Base
        # @return [:present, nil] Whether the specified cluster should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true

        # @return [String, nil] The name of the cluster to manage.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] IP address of cluster to be joined
        attribute :cluster_ip_address
        validates :cluster_ip_address, type: String

        # @return [String, nil] License code to be applied to the cluster
        attribute :license_code
        validates :license_code, type: String

        # @return [Object, nil] License package name of the license to be removed
        attribute :license_package

        # @return [Object, nil] Serial number of the cluster node
        attribute :node_serial_number
      end
    end
  end
end
