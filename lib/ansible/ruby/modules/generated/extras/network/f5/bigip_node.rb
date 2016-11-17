# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM nodes via iControl SOAP API
      class Bigip_node < Base
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

        # @return [:and_list, :m_of_n, nil] Monitor rule type when monitors > 1
        attribute :monitor_type
        validates :monitor_type, inclusion: {:in=>[:and_list, :m_of_n], :message=>"%{value} needs to be :and_list, :m_of_n"}, allow_nil: true

        # @return [Object, nil] Monitor quorum value when monitor_type is m_of_n
        attribute :quorum

        # @return [Array<String>, String, nil] Monitor template name list. Always use the full path to the monitor.
        attribute :monitors
        validates :monitors, type: TypeGeneric.new(String)

        # @return [String] Node IP. Required when state=present and node does not exist. Error when state=absent.
        attribute :host
        validates :host, presence: true, type: String

        # @return [String, nil] Node description.
        attribute :description
        validates :description, type: String
      end
    end
  end
end
