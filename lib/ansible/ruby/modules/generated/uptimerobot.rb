# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Uptimerobot < Base
        # @return [String] Define whether or not the monitor should be running or paused.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:started, :paused], :message=>"%{value} needs to be :started, :paused"}

        # @return [String] ID of the monitor to check.
        attribute :monitorid
        validates :monitorid, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] Uptime Robot API key.
        attribute :apikey
        validates :apikey, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}
      end
    end
  end
end