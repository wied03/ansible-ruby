# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to configure VSAN clustering on an ESXi host
      class Vmware_vsan_cluster < Base
        # @return [Object, nil] Desired cluster UUID
        attribute :cluster_uuid
      end
    end
  end
end
