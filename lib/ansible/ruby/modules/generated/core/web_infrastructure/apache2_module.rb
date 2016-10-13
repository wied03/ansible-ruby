# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enables or disables a specified module of the Apache2 webserver.
      class Apache2_module < Base
        # @return [String] name of the module to enable/disable
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] force disabling of default modules and override Debian warnings
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] indicate the desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
