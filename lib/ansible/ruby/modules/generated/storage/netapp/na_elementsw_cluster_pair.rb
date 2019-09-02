# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete cluster pair
      class Na_elementsw_cluster_pair < Base
        # @return [:present, :absent, nil] Whether the specified cluster pair should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Destination IP address of the cluster to be paired.
        attribute :dest_mvip
        validates :dest_mvip, presence: true, type: String

        # @return [String, nil] Destination username for the cluster to be paired.,Optional if this is same as source cluster username.
        attribute :dest_username
        validates :dest_username, type: String

        # @return [String, nil] Destination password for the cluster to be paired.,Optional if this is same as source cluster password.
        attribute :dest_password
        validates :dest_password, type: String
      end
    end
  end
end
