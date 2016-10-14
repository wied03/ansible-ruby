# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get I(openstack) client config data from clouds.yaml or environment
      class Os_client_config < Base
        # @return [Object, nil] List of clouds to limit the return list to. No value means return information on all configured clouds
        attribute :clouds
      end
    end
  end
end
