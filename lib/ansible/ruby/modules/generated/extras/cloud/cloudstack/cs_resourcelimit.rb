# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage limits of resources for domains, accounts and projects.
      class Cs_resourcelimit < Base
        # @return [:instance, :ip_address, :volume, :snapshot, :template, :network, :vpc, :cpu, :memory, :primary_storage, :secondary_storage] Type of the resource.
        attribute :resource_type
        validates :resource_type, presence: true, inclusion: {:in=>[:instance, :ip_address, :volume, :snapshot, :template, :network, :vpc, :cpu, :memory, :primary_storage, :secondary_storage], :message=>"%{value} needs to be :instance, :ip_address, :volume, :snapshot, :template, :network, :vpc, :cpu, :memory, :primary_storage, :secondary_storage"}

        # @return [Integer, nil] Maximum number of the resource.,Default is unlimited C(-1).
        attribute :limit
        validates :limit, type: Integer

        # @return [Object, nil] Domain the resource is related to.
        attribute :domain

        # @return [Object, nil] Account the resource is related to.
        attribute :account

        # @return [Object, nil] Name of the project the resource is related to.
        attribute :project
      end
    end
  end
end
