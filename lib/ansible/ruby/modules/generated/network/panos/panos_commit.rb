# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # PanOS module that will commit firewall's candidate configuration on
      # the device. The new configuration will become active immediately.
      class Panos_commit < Base
        # @return [Float, nil] interval for checking commit job
        attribute :interval
        validates :interval, type: Float

        # @return [Object, nil] timeout for commit job
        attribute :timeout

        # @return [:yes, :no, nil] if commit should be synchronous
        attribute :sync
        validates :sync, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
