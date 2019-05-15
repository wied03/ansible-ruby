# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete Azure Traffic Manager endpoint.
      class Azure_rm_trafficmanagerendpoint < Base
        # @return [String] Name of a resource group where the Traffic Manager endpoint exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the endpoint.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of Traffic Manager profile where this endpoints attaches to.
        attribute :profile_name
        validates :profile_name, presence: true, type: String

        # @return [:azure_endpoints, :external_endpoints, :nested_endpoints] The type of the endpoint.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:azure_endpoints, :external_endpoints, :nested_endpoints], :message=>"%{value} needs to be :azure_endpoints, :external_endpoints, :nested_endpoints"}

        # @return [Object, nil] The Azure Resource URI of the of the endpoint.,Not applicable to endpoints of I(type) C(external_endpoints).
        attribute :target_resource_id

        # @return [String, nil] The fully-qualified DNS name of the endpoint.
        attribute :target
        validates :target, type: String

        # @return [Boolean, nil] The status of the endpoint.
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] The weight of this endpoint when traffic manager profile has routing_method of C(weighted).,Possible values are from 1 to 1000.
        attribute :weight
        validates :weight, type: Integer

        # @return [Integer, nil] The priority of this endpoint when traffic manager profile has routing_method of C(priority).,Possible values are from 1 to 1000, lower values represent higher priority.,This is an optional parameter. If specified, it must be specified on all endpoints.,No two endpoints can share the same priority value.
        attribute :priority
        validates :priority, type: Integer

        # @return [String, nil] Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.
        attribute :location
        validates :location, type: String

        # @return [Object, nil] The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available.,Only applicable to endpoint of I(type) (nested_endpoints).
        attribute :min_child_endpoints

        # @return [Object, nil] The list of countries/regions mapped to this endpoint when traffic manager profile has routing_method of C(geographic).
        attribute :geo_mapping

        # @return [:absent, :present, nil] Assert the state of the Traffic Manager endpoint. Use C(present) to create or update a Traffic Manager endpoint and C(absent) to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
