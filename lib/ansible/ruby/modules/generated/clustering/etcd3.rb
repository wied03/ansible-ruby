# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sets or deletes values in etcd3 cluster using its v3 api.
      # Needs python etcd3 lib to work
      class Etcd3 < Base
        # @return [String] the key where the information is stored in the cluster
        attribute :key
        validates :key, presence: true, type: String

        # @return [String] the information stored
        attribute :value
        validates :value, presence: true, type: String

        # @return [String, nil] the IP address of the cluster
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] the port number used to connect to the cluster
        attribute :port
        validates :port, type: Integer

        # @return [String] the state of the value for the key.,can be present or absent
        attribute :state
        validates :state, presence: true, type: String
      end
    end
  end
end
