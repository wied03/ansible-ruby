# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for virtual machine images.
      class Azure_rm_virtualmachineimage_facts < Base
        # @return [Object, nil] Only show results for a specific security group.
        attribute :name

        # @return [String] Azure location value (ie. westus, eastus, eastus2, northcentralus, etc.). Supplying only a location value will yield a list of available publishers for the location.
        attribute :location
        validates :location, presence: true, type: String

        # @return [String, nil] Name of an image publisher. List image offerings associated with a particular publisher.
        attribute :publisher
        validates :publisher, type: String

        # @return [String, nil] Name of an image offering. Combine with sku to see a list of available image versions.
        attribute :offer
        validates :offer, type: String

        # @return [String, nil] Image offering SKU. Combine with offer to see a list of available versions.
        attribute :sku
        validates :sku, type: String

        # @return [String, nil] Specific version number of an image.
        attribute :version
        validates :version, type: String
      end
    end
  end
end
