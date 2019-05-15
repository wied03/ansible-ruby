# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # modify the UC adapter mode and type taking pending type and mode into account.
      class Na_ontap_ucadapter < Base
        # @return [:present, nil] Whether the specified adapter should exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true

        # @return [String] Specifies the adapter name.
        attribute :adapter_name
        validates :adapter_name, presence: true, type: String

        # @return [String] Specifies the adapter home node.
        attribute :node_name
        validates :node_name, presence: true, type: String

        # @return [String, nil] Specifies the mode of the adapter.
        attribute :mode
        validates :mode, type: String

        # @return [String, nil] Specifies the fc4 type of the adapter.
        attribute :type
        validates :type, type: String
      end
    end
  end
end
