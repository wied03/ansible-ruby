# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_virtualmachineimage_facts < Base
        # @return [Object] Only show results for a specific security group.
        attribute :name

        # @return [String] Azure location value (ie. westus, eastus, eastus2, northcentralus, etc.). Supplying only a location value will yield a list of available publishers for the location.
        attribute :location
        validates :location, presence: true, type: String

        # @return [String] Name of an image publisher. List image offerings associated with a particular publisher.
        attribute :publisher
        validates :publisher, type: String

        # @return [String] Name of an image offering. Combine with sku to see a list of available image versions.
        attribute :offer
        validates :offer, type: String

        # @return [String] Image offering SKU. Combine with offer to see a list of available versions.
        attribute :sku
        validates :sku, type: String

        # @return [String] Specific version number of an image.
        attribute :version
        validates :version, type: String
      end
    end
  end
end
