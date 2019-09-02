# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete or modify NTP server in ONTAP
      class Na_ontap_ntp < Base
        # @return [:present, :absent, nil] Whether the specified NTP server should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] The name of the NTP server to manage.
        attribute :server_name
        validates :server_name, presence: true

        # @return [:auto, 3, 4, nil] give version for NTP server
        attribute :version
        validates :version, expression_inclusion: {:in=>[:auto, 3, 4], :message=>"%{value} needs to be :auto, 3, 4"}, allow_nil: true
      end
    end
  end
end
