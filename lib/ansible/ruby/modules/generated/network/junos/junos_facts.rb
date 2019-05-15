# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collects fact information from a remote device running the Junos operating system.  By default, the module will collect basic fact information from the device to be included with the hostvars. Additional fact information can be collected based on the configured set of arguments.
      class Junos_facts < Base
        # @return [String, nil] When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. To maintain backward compatbility old style facts can be retrieved by explicilty adding C(ofacts)  to value, this reqires junos-eznc to be installed as a prerequisite. Valid value of gather_subset are default, hardware, config, interfaces, ofacts. If C(ofacts) is present in the list it fetches the old style facts (fact keys without 'ansible_' prefix) and it requires junos-eznc library to be installed on control node and the device login credentials must be given in C(provider) option.
        attribute :gather_subset
        validates :gather_subset, type: String

        # @return [:xml, :text, :set, :json, nil] The I(config_format) argument specifies the format of the configuration when serializing output from the device. This argument is applicable only when C(config) value is present in I(gather_subset). The I(config_format) should be supported by the junos version running on device. This value is not applicable while fetching old style facts that is when C(ofacts) value is present in value if I(gather_subset) value.
        attribute :config_format
        validates :config_format, inclusion: {:in=>[:xml, :text, :set, :json], :message=>"%{value} needs to be :xml, :text, :set, :json"}, allow_nil: true
      end
    end
  end
end
