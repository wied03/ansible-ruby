# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or delete OpenStack Identity service endpoints. If a service with the same combination of I(service), I(interface) and I(region) exist, the I(url) and I(state) (C(present) or C(absent)) will be updated.
      class Os_keystone_endpoint < Base
        # @return [String] Name or id of the service.
        attribute :service
        validates :service, presence: true, type: String

        # @return [:admin, :public, :internal] Interface of the service.
        attribute :interface
        validates :interface, presence: true, expression_inclusion: {:in=>[:admin, :public, :internal], :message=>"%{value} needs to be :admin, :public, :internal"}

        # @return [String] URL of the service.
        attribute :url
        validates :url, presence: true, type: String

        # @return [String, nil] Region that the service belongs to. Note that I(region_name) is used for authentication.
        attribute :region
        validates :region, type: String

        # @return [Boolean, nil] Is the service enabled.
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Should the resource be C(present) or C(absent).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
