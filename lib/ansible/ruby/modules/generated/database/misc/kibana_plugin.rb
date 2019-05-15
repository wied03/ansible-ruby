# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Kibana plugins.
      class Kibana_plugin < Base
        # @return [String] Name of the plugin to install
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Desired state of a plugin.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Set exact URL to download the plugin from. For local file, prefix its absolute path with file://
        attribute :url

        # @return [String, nil] Timeout setting: 30s, 1m, 1h...
        attribute :timeout
        validates :timeout, type: String

        # @return [String, nil] Location of the plugin binary
        attribute :plugin_bin
        validates :plugin_bin, type: String

        # @return [String, nil] Your configured plugin directory specified in Kibana
        attribute :plugin_dir
        validates :plugin_dir, type: String

        # @return [String, nil] Version of the plugin to be installed. If plugin exists with previous version, it will NOT be updated if C(force) is not set to yes
        attribute :version
        validates :version, type: String

        # @return [String, nil] Delete and re-install the plugin. Can be useful for plugins update
        attribute :force
        validates :force, type: String
      end
    end
  end
end
