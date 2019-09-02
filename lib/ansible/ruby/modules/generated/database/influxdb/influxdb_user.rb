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

        # @return [Symbol, nil] Whether the user should be in the admin role or not.
        attribute :admin
        validates :admin, type: Symbol

        # @return [:present, :absent, nil] State of the user.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
