# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Riak < Base
        # @return [:ping, :kv_test, :join, :plan, :commit, nil] The command you would like to perform against the cluster.
        attribute :command
        validates :command, inclusion: {:in=>[:ping, :kv_test, :join, :plan, :commit], :message=>"%{value} needs to be :ping, :kv_test, :join, :plan, :commit"}, allow_nil: true

        # @return [String, nil] The path to the riak configuration directory
        attribute :config_dir
        validates :config_dir, type: String

        # @return [String, nil] The ip address and port that is listening for Riak HTTP queries
        attribute :http_conn
        validates :http_conn, type: String

        # @return [String, nil] The target node for certain operations (join, ping)
        attribute :target_node
        validates :target_node, type: String

        # @return [String, nil] Number of seconds to wait for handoffs to complete.
        attribute :wait_for_handoffs
        validates :wait_for_handoffs, type: String

        # @return [Object, nil] Number of seconds to wait for all nodes to agree on the ring.
        attribute :wait_for_ring

        # @return [:kv, nil] Waits for a riak service to come online before continuing.
        attribute :wait_for_service
        validates :wait_for_service, inclusion: {:in=>[:kv], :message=>"%{value} needs to be :kv"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
