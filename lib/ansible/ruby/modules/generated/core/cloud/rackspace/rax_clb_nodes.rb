# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_clb_nodes < Base
        # @return [String] IP address or domain name of the node
        attribute :address
        validates :address, type: String

        # @return [:enabled, :disabled, :draining, nil] Condition for the node, which determines its role within the load balancer
        attribute :condition
        validates :condition, inclusion: {:in=>[:enabled, :disabled, :draining], :message=>"%{value} needs to be :enabled, :disabled, :draining"}, allow_nil: true

        # @return [Fixnum] Load balancer id
        attribute :load_balancer_id
        validates :load_balancer_id, presence: true, type: Fixnum

        # @return [Fixnum] Node id
        attribute :node_id
        validates :node_id, type: Fixnum

        # @return [Fixnum] Port number of the load balanced service on the node
        attribute :port
        validates :port, type: Fixnum

        # @return [:present, :absent, nil] Indicate desired state of the node
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:primary, :secondary, nil] Type of node
        attribute :type
        validates :type, inclusion: {:in=>[:primary, :secondary], :message=>"%{value} needs to be :primary, :secondary"}, allow_nil: true

        # @return [:yes, :no, nil] Wait for the load balancer to become active before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] How long to wait before giving up and returning an error
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [Object] Weight of node
        attribute :weight
      end
    end
  end
end
