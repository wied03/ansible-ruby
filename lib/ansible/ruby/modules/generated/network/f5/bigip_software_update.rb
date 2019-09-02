# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the software update settings of a BIG-IP.
      class Bigip_software_update < Base
        # @return [Symbol, nil] Specifies whether to automatically check for updates on the F5 Networks downloads server.
        attribute :auto_check
        validates :auto_check, type: Symbol

        # @return [Symbol, nil] Specifies whether to automatically send phone home data to the F5 Networks PhoneHome server.
        attribute :auto_phone_home
        validates :auto_phone_home, type: Symbol

        # @return [:daily, :monthly, :weekly, nil] Specifies the schedule for the automatic update check.
        attribute :frequency
        validates :frequency, expression_inclusion: {:in=>[:daily, :monthly, :weekly], :message=>"%{value} needs to be :daily, :monthly, :weekly"}, allow_nil: true
      end
    end
  end
end
