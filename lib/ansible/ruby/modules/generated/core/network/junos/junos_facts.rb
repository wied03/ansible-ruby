# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Junos_facts < Base
        # @return [TrueClass] The C(config) argument instructs the fact module to collect the configuration from the remote device.  The configuration is then included in return facts.  By default, the configuration is returned as text.  The C(config_format) can be used to return different Junos configuration formats.
        attribute :config
        validates :config, type: TrueClass

        # @return [String] The C(config_format) argument is used to specify the desired format of the configuration file.  Devices support three configuration file formats.  By default, the configuration from the device is returned as text.  The other options include set and xml.  If the xml option is choosen, the configuration file is returned as both xml and json.
        attribute :config_format
        validates :config_format, inclusion: {:in=>[:xml, :text, :set], :message=>"%{value} needs to be :xml, :text, :set"}, allow_nil: true
      end
    end
  end
end
