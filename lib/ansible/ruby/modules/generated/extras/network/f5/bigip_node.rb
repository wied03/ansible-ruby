# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM nodes via iControl SOAP API
      class Bigip_node < Base
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

        # @return [:enabled, :disabled, nil] Set new session availability status for node
        attribute :session_state
        validates :session_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Set monitor availability status for node
        attribute :monitor_state
        validates :monitor_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Partition
        attribute :partition
        validates :partition, type: String

        # @return [String, nil] Node name
        attribute :name
        validates :name, type: String

        # @return [Object] Node IP. Required when state=present and node does not exist. Error when state=absent.
        attribute :host
        validates :host, presence: true

        # @return [Object, nil] Node description.
        attribute :description
      end
    end
  end
end
