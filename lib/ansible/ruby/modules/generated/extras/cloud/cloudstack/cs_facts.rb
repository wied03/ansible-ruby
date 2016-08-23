# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_facts < Base
        # @return [:cloudstack_service_offering, :cloudstack_availability_zone, :cloudstack_public_hostname, :cloudstack_public_ipv4, :cloudstack_local_hostname, :cloudstack_local_ipv4, :cloudstack_instance_id, :cloudstack_user_data, nil] Filter for a specific fact.
        attribute :filter
        validates :filter, inclusion: {:in=>[:cloudstack_service_offering, :cloudstack_availability_zone, :cloudstack_public_hostname, :cloudstack_public_ipv4, :cloudstack_local_hostname, :cloudstack_local_ipv4, :cloudstack_instance_id, :cloudstack_user_data], :message=>"%{value} needs to be :cloudstack_service_offering, :cloudstack_availability_zone, :cloudstack_public_hostname, :cloudstack_public_ipv4, :cloudstack_local_hostname, :cloudstack_local_ipv4, :cloudstack_instance_id, :cloudstack_user_data"}, allow_nil: true
      end
    end
  end
end
