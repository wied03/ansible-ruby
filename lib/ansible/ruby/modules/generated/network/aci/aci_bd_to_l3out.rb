# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind Bridge Domain to L3 Out on Cisco ACI fabrics.
      class Aci_bd_to_l3out < Base
        # @return [Object, nil] The name of the Bridge Domain.
        attribute :bd

        # @return [Object, nil] The name of the l3out to associate with th Bridge Domain.
        attribute :l3out

        # @return [Object, nil] The name of the Tenant.
        attribute :tenant

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
