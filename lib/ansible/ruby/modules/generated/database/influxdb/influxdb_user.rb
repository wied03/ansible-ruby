# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage InfluxDB users
      class Influxdb_user < Base
        # @return [String] Name of the user.
        attribute :user_name
        validates :user_name, presence: true, type: String

        # @return [String, nil] Password to be set for the user.
        attribute :user_password
        validates :user_password, type: String

        # @return [Boolean, nil] Whether the user should be in the admin role or not.
        attribute :admin
        validates :admin, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the user.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
