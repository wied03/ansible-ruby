# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a virtual machine scale set
      class Azure_rm_virtualmachine_scaleset_facts < Base
        # @return [String, nil] Limit results to a specific virtual machine scale set
        attribute :name
        validates :name, type: String

        # @return [String, nil] The resource group to search for the desired virtual machine scale set
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Array<String>, String, nil] List of tags to be matched
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [:curated, :raw, nil] Format of the data returned.,If C(raw) is selected information will be returned in raw format from Azure Python SDK.,If C(curated) is selected the structure will be identical to input parameters of azure_rm_virtualmachine_scaleset module.,In Ansible 2.5 and lower facts are always returned in raw format.,Please note that this option will be deprecated in 2.10 when curated format will become the only supported format.
        attribute :format
        validates :format, inclusion: {:in=>[:curated, :raw], :message=>"%{value} needs to be :curated, :raw"}, allow_nil: true
      end
    end
  end
end
