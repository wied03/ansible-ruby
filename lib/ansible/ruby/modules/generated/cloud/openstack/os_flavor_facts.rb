# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about available OpenStack instance flavors. By default, facts about ALL flavors are retrieved. Filters can be applied to get facts for only matching flavors. For example, you can filter on the amount of RAM available to the flavor, or the number of virtual CPUs available to the flavor, or both. When specifying multiple filters, *ALL* filters must match on a flavor before that flavor is returned as a fact.
      class Os_flavor_facts < Base
        # @return [String, nil] A flavor name. Cannot be used with I(ram) or I(vcpus) or I(ephemeral).
        attribute :name
        validates :name, type: String

        # @return [String, nil] A string used for filtering flavors based on the amount of RAM (in MB) desired. This string accepts the following special values: 'MIN' (return flavors with the minimum amount of RAM), and 'MAX' (return flavors with the maximum amount of RAM).,A specific amount of RAM may also be specified. Any flavors with this exact amount of RAM will be returned.,A range of acceptable RAM may be given using a special syntax. Simply prefix the amount of RAM with one of these acceptable range values: '<', '>', '<=', '>='. These values represent less than, greater than, less than or equal to, and greater than or equal to, respectively.
        attribute :ram
        validates :ram, type: String

        # @return [String, nil] A string used for filtering flavors based on the number of virtual CPUs desired. Format is the same as the I(ram) parameter.
        attribute :vcpus
        validates :vcpus, type: String

        # @return [Integer, nil] Limits the number of flavors returned. All matching flavors are returned by default.
        attribute :limit
        validates :limit, type: Integer

        # @return [String, nil] A string used for filtering flavors based on the amount of ephemeral storage. Format is the same as the I(ram) parameter
        attribute :ephemeral
        validates :ephemeral, type: String

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
