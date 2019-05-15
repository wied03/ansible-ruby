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

        # @return [:bool, :float, :int, :string, nil] The type of value being set. This is ignored if the state is "get".
        attribute :value_type
        validates :value_type, inclusion: {:in=>[:bool, :float, :int, :string], :message=>"%{value} needs to be :bool, :float, :int, :string"}, allow_nil: true

        # @return [:absent, :get, :present] The action to take upon the key/value.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :get, :present], :message=>"%{value} needs to be :absent, :get, :present"}

        # @return [Object, nil] Specify a configuration source to use rather than the default path. See man gconftool-2(1)
        attribute :config_source

        # @return [String, nil] Access the config database directly, bypassing server.  If direct is specified then the config_source must be specified as well. See man gconftool-2(1)
        attribute :direct
        validates :direct, type: String
      end
    end
  end
end
