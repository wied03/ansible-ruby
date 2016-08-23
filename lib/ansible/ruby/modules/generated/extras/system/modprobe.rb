# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Modprobe < Base
        # @return [String] Name of kernel module to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Whether the module should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Modules parameters.
        attribute :params
        validates :params, type: String
      end
    end
  end
end
