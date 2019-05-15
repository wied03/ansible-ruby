# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Install and remove Grafana plugins.
      class Grafana_plugin < Base
        # @return [String] Name of the plugin.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Version of the plugin to install.,Default to latest.
        attribute :version
        validates :version, type: String

        # @return [Object, nil] Directory where Grafana plugin will be installed.
        attribute :grafana_plugins_dir

        # @return [Object, nil] Grafana repository. If not set, gafana-cli will use the default value C(https://grafana.net/api/plugins).
        attribute :grafana_repo

        # @return [Object, nil] Custom Grafana plugin URL.,Requires grafana 4.6.x or later.
        attribute :grafana_plugin_url

        # @return [:absent, :present, nil] Status of the Grafana plugin.,If latest is set, the version parameter will be ignored.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
