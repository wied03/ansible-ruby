# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module offers the ability to set a configuration checkpoint file or rollback to a configuration checkpoint file on HUAWEI CloudEngine switches.
      class Ce_rollback < Base
        # @return [Integer, nil] Specifies the label of the configuration rollback point to which system configurations are expected to roll back. The value is an integer that the system generates automatically.
        attribute :commit_id
        validates :commit_id, type: Integer

        # @return [Object, nil] Specifies a user label for a configuration rollback point. The value is a string of 1 to 256 case-sensitive ASCII characters, spaces not supported. The value must start with a letter and cannot be presented in a single hyphen (-).
        attribute :label

        # @return [Object, nil] Specifies a configuration file for configuration rollback. The value is a string of 5 to 64 case-sensitive characters in the format of *.zip, *.cfg, or *.dat, spaces not supported.
        attribute :filename

        # @return [Object, nil] Specifies the number of configuration rollback points. The value is an integer that ranges from 1 to 80.
        attribute :last

        # @return [Object, nil] Specifies the number of configuration rollback points. The value is an integer that ranges from 1 to 80.
        attribute :oldest

        # @return [:rollback, :clear, :set, :display, :commit] The operation of configuration rollback.
        attribute :action
        validates :action, presence: true, expression_inclusion: {:in=>[:rollback, :clear, :set, :display, :commit], :message=>"%{value} needs to be :rollback, :clear, :set, :display, :commit"}
      end
    end
  end
end
