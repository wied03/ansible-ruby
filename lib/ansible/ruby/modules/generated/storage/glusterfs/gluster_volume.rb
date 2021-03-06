# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, remove, start, stop and tune GlusterFS volumes
      class Gluster_volume < Base
        # @return [String] The volume name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, :started, :stopped] Use present/absent ensure if a volume exists or not. Use started/stopped to control its availability.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:absent, :present, :started, :stopped], :message=>"%{value} needs to be :absent, :present, :started, :stopped"}

        # @return [Array<String>, String, nil] List of hosts to use for probing and brick setup.
        attribute :cluster
        validates :cluster, type: TypeGeneric.new(String)

        # @return [Object, nil] Override local hostname (for peer probing purposes).
        attribute :host

        # @return [Object, nil] Replica count for volume.
        attribute :replicas

        # @return [Object, nil] Arbiter count for volume.
        attribute :arbiters

        # @return [Object, nil] Stripe count for volume.
        attribute :stripes

        # @return [Object, nil] Disperse count for volume.
        attribute :disperses

        # @return [Object, nil] Redundancy count for volume.
        attribute :redundancies

        # @return [:tcp, :rdma, :"tcp,rdma", nil] Transport type for volume.
        attribute :transport
        validates :transport, expression_inclusion: {:in=>[:tcp, :rdma, :"tcp,rdma"], :message=>"%{value} needs to be :tcp, :rdma, :\"tcp,rdma\""}, allow_nil: true

        # @return [Array<String>, String, nil] Brick paths on servers. Multiple brick paths can be separated by commas.
        attribute :bricks
        validates :bricks, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Controls whether the volume is started after creation or not.
        attribute :start_on_create
        validates :start_on_create, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Controls whether the cluster is rebalanced after changes.
        attribute :rebalance
        validates :rebalance, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Directory for limit-usage.
        attribute :directory
        validates :directory, type: String

        # @return [Hash, nil] A dictionary/hash with options/settings for the volume.
        attribute :options
        validates :options, type: Hash

        # @return [String, nil] Quota value for limit-usage (be sure to use 10.0MB instead of 10MB, see quota list).
        attribute :quota
        validates :quota, type: String

        # @return [Symbol, nil] If brick is being created in the root partition, module will fail. Set force to true to override this behaviour.
        attribute :force
        validates :force, type: Symbol
      end
    end
  end
end
