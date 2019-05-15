# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages the AFM port lists on a BIG-IP. This module can be used to add and remove port list entries.
      class Bigip_firewall_port_list < Base
        # @return [String] Specifies the name of the port list.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] Description of the port list
        attribute :description

        # @return [String, Array<Integer>, Integer, nil] Simple list of port values to add to the list
        attribute :ports
        validates :ports, type: TypeGeneric.new(Integer)

        # @return [Array<String>, String, nil] A list of port ranges where the range starts with a port number, is followed by a dash (-) and then a second number.,If the first number is greater than the second number, the numbers will be reversed so-as to be properly formatted. ie, 90-78 would become 78-90.
        attribute :port_ranges
        validates :port_ranges, type: TypeGeneric.new(String)

        # @return [Object, nil] Simple list of existing port lists to add to this list. Port lists can be specified in either their fully qualified name (/Common/foo) or their short name (foo). If a short name is used, the C(partition) argument will automatically be prepended to the short name.
        attribute :port_lists

        # @return [:present, :absent, nil] When C(present), ensures that the address list and entries exists.,When C(absent), ensures the address list is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
