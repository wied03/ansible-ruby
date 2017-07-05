# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows for the manipulation of GNOME 2 Configuration via gconftool-2.  Please see the gconftool-2(1) man pages for more details.
      class Gconftool2 < Base
        # @return [String] A GConf preference key is an element in the GConf repository that corresponds to an application preference. See man gconftool-2(1)
        attribute :key
        validates :key, presence: true, type: String

        # @return [String, nil] Preference keys typically have simple values such as strings, integers, or lists of strings and integers. This is ignored if the state is "get". See man gconftool-2(1)
        attribute :value
        validates :value, type: String

        # @return [:int, :bool, :float, :string, nil] The type of value being set. This is ignored if the state is "get".
        attribute :value_type
        validates :value_type, inclusion: {:in=>[:int, :bool, :float, :string], :message=>"%{value} needs to be :int, :bool, :float, :string"}, allow_nil: true

        # @return [:get, :present, :absent] The action to take upon the key/value.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:get, :present, :absent], :message=>"%{value} needs to be :get, :present, :absent"}

        # @return [Object, nil] Specify a configuration source to use rather than the default path. See man gconftool-2(1)
        attribute :config_source

        # @return [Boolean, nil] Access the config database directly, bypassing server.  If direct is specified then the config_source must be specified as well. See man gconftool-2(1)
        attribute :direct
        validates :direct, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
