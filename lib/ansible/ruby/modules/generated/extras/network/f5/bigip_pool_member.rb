# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bigip_pool_member < Base
        # @return [Object] BIG-IP host
        attribute :server
        validates :server, presence: true

        # @return [Object] BIG-IP username
        attribute :user
        validates :user, presence: true

        # @return [Object] BIG-IP password
        attribute :password
        validates :password, presence: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites.  Prior to 2.0, this module would always validate on python >= 2.7.9 and never validate on python <= 2.7.8
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent] Pool member state
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:enabled, :disabled, nil] Set new session availability status for pool member
        attribute :session_state
        validates :session_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Set monitor availability status for pool member
        attribute :monitor_state
        validates :monitor_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object] Pool name. This pool must exist.
        attribute :pool
        validates :pool, presence: true

        # @return [String, nil] Partition
        attribute :partition
        validates :partition, type: String

        # @return [Object] Pool member IP
        attribute :host
        validates :host, presence: true

        # @return [Object] Pool member port
        attribute :port
        validates :port, presence: true

        # @return [Object, nil] Pool member connection limit. Setting this to 0 disables the limit.
        attribute :connection_limit

        # @return [Object, nil] Pool member description
        attribute :description

        # @return [Object, nil] Pool member rate limit (connections-per-second). Setting this to 0 disables the limit.
        attribute :rate_limit

        # @return [Object, nil] Pool member ratio weight. Valid values range from 1 through 100. New pool members -- unless overriden with this value -- default to 1.
        attribute :ratio

        # @return [:yes, :no, nil] When state is absent and the pool member is no longer referenced in other pools, the default behavior removes the unused node object. Setting this to 'yes' disables this behavior.
        attribute :preserve_node
        validates :preserve_node, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
