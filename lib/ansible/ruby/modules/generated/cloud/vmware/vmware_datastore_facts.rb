# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about datastores in VMWare infrastructure.
      # All values and VMware object names are case sensitive.
      class Vmware_datastore_facts < Base
        # @return [String, nil] Name of the datastore to match.,If set, facts of specific datastores are returned.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Datacenter to search for datastores.,This parameter is required, if C(cluster) is not supplied.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Object, nil] Cluster to search for datastores.,If set, facts of datastores belonging this clusters will be returned.,This parameter is required, if C(datacenter) is not supplied.
        attribute :cluster
      end
    end
  end
end
