# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages log destinations on a BIG-IP.
      class Bigip_log_destination < Base
        # @return [String] Specifies the name of the log destination.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The description of the log destination.
        attribute :description

        # @return [:"remote-high-speed-log", :"remote-syslog"] Specifies the type of log destination.,Once created, this parameter cannot be changed.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:"remote-high-speed-log", :"remote-syslog"], :message=>"%{value} needs to be :\"remote-high-speed-log\", :\"remote-syslog\""}

        # @return [Hash, nil] This parameter is only available when C(type) is C(remote-high-speed-log).
        attribute :pool_settings
        validates :pool_settings, type: Hash

        # @return [Hash, nil] This parameter is only available when C(type) is C(remote-syslog).
        attribute :syslog_settings
        validates :syslog_settings, type: Hash

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
