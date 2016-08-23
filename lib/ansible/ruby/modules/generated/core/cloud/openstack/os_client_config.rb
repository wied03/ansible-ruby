# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_client_config < Base
        # @return [Array] List of clouds to limit the return list to. No value means return information on all configured clouds
        attribute :clouds
        validates :clouds, type: Array
      end
    end
  end
end