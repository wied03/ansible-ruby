# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or instances in AWS Lightsail and optionally wait for it to be 'running'.
      class Lightsail < Base
        # @return [:present, :absent, :running, :restarted, :stopped, nil] Indicate desired state of the target.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :running, :restarted, :stopped], :message=>"%{value} needs to be :present, :absent, :running, :restarted, :stopped"}, allow_nil: true

        # @return [String] Name of the instance
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] AWS availability zone in which to launch the instance. Required when state='present'
        attribute :zone
        validates :zone, type: String

        # @return [String, nil] ID of the instance blueprint image. Required when state='present'
        attribute :blueprint_id
        validates :blueprint_id, type: String

        # @return [String, nil] Bundle of specification info for the instance. Required when state='present'
        attribute :bundle_id
        validates :bundle_id, type: String

        # @return [String, nil] Launch script that can configure the instance with additional data
        attribute :user_data
        validates :user_data, type: String

        # @return [String, nil] Name of the key pair to use with the instance
        attribute :key_pair_name
        validates :key_pair_name, type: String

        # @return [String, nil] Wait for the instance to be in state 'running' before returning.  If wait is "no" an ip_address may not be returned
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] How long before wait gives up, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
