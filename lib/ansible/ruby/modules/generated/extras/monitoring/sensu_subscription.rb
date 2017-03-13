# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage which I(sensu channels) a machine should subscribe to
      class Sensu_subscription < Base
        # @return [String] The name of the channel
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the machine should subscribe or unsubscribe from the channel
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Path to the subscriptions json file
        attribute :path
        validates :path, type: String

        # @return [Boolean, nil] Create a backup file (if yes), including the timestamp information so you,can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
