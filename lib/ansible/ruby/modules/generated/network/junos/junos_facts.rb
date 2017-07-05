# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collects fact information from a remote device running the Junos operating system.  By default, the module will collect basic fact information from the device to be included with the hostvars. Additional fact information can be collected based on the configured set of arguments.
      class Junos_facts < Base
        # @return [String, nil] When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
        attribute :gather_subset
        validates :gather_subset, type: String

        # @return [:xml, :set, :text, :json, nil] The I(config_format) argument specifies the format of the configuration when serializing output from the device. This argument is applicable only when C(config) value is present in I(gather_subset).
        attribute :config_format
        validates :config_format, inclusion: {:in=>[:xml, :set, :text, :json], :message=>"%{value} needs to be :xml, :set, :text, :json"}, allow_nil: true
      end
    end
  end
end
