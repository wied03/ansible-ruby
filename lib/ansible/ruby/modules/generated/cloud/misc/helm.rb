# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Install, upgrade, delete and list packages with the Helm package manager.
      class Helm < Base
        # @return [String, nil] Tiller's server host.
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] Tiller's server port.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] Kubernetes namespace where the chart should be installed.
        attribute :namespace
        validates :namespace, type: String

        # @return [String, nil] Release name to manage.
        attribute :name
        validates :name, type: String

        # @return [:absent, :purged, :present, nil] Whether to install C(present), remove C(absent), or purge C(purged) a package.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :purged, :present], :message=>"%{value} needs to be :absent, :purged, :present"}, allow_nil: true

        # @return [Object, nil] A map describing the chart to install. See examples for available options.\r\n
        attribute :chart

        # @return [Object, nil] A map of value options for the chart.
        attribute :values

        # @return [:yes, :no, nil] Whether to disable hooks during the uninstall process.
        attribute :disable_hooks
        validates :disable_hooks, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
