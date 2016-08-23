# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gluster_volume < Base
        # @return [String] The volume name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :started, :stopped] Use present/absent ensure if a volume exists or not, use started/stopped to control it's availability.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :started, :stopped], :message=>"%{value} needs to be :present, :absent, :started, :stopped"}

        # @return [Array<String>] List of hosts to use for probing and brick setup
        attribute :cluster, flat_array: true
        validates :cluster, type: TypeGeneric.new(String)

        # @return [Object] Override local hostname (for peer probing purposes)
        attribute :host

        # @return [Object] Replica count for volume
        attribute :replicas

        # @return [Object] Stripe count for volume
        attribute :stripes

        # @return [:tcp, :rdma, :"tcp,rdma", nil] Transport type for volume
        attribute :transport
        validates :transport, inclusion: {:in=>[:tcp, :rdma, :"tcp,rdma"], :message=>"%{value} needs to be :tcp, :rdma, :\"tcp,rdma\""}, allow_nil: true

        # @return [Array<String>] Brick paths on servers. Multiple brick paths can be separated by commas
        attribute :bricks, flat_array: true
        validates :bricks, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Controls whether the volume is started after creation or not, defaults to yes
        attribute :start_on_create
        validates :start_on_create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Controls whether the cluster is rebalanced after changes
        attribute :rebalance
        validates :rebalance, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Directory for limit-usage
        attribute :directory
        validates :directory, type: String

        # @return [String] A dictionary/hash with options/settings for the volume
        attribute :options
        validates :options, type: String

        # @return [String] Quota value for limit-usage (be sure to use 10.0MB instead of 10MB, see quota list)
        attribute :quota
        validates :quota, type: String

        # @return [Object] If brick is being created in the root partition, module will fail. Set force to true to override this behaviour
        attribute :force
      end
    end
  end
end
