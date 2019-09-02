# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows management of resources in an OpenShift cluster. The inventory host can be any host with network connectivity to the OpenShift cluster; the default port being 8443/TCP.
      # This module relies on a token to authenticate to OpenShift. This can either be a user or a service account.
      class Oc < Base
        # @return [String, nil] Hostname or address of the OpenShift API endpoint. By default, this is expected to be the current inventory host.
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] The port number of the API endpoint.
        attribute :port
        validates :port, type: Integer

        # @return [Hash, nil] The inline definition of the resource. This is mutually exclusive with name, namespace and kind.
        attribute :inline
        validates :inline, type: Hash

        # @return [String] The kind of the resource upon which to take action.
        attribute :kind
        validates :kind, presence: true, type: String

        # @return [String, nil] The name of the resource on which to take action.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The namespace of the resource upon which to take action.
        attribute :namespace
        validates :namespace, type: String

        # @return [String] The token with which to authenticate against the OpenShift cluster.
        attribute :token
        validates :token, presence: true, type: String

        # @return [Boolean, nil] If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent] If the state is present, and the resource doesn't exist, it shall be created using the inline definition. If the state is present and the resource exists, the definition will be updated, again using an inline definition. If the state is absent, the resource will be deleted if it exists.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
