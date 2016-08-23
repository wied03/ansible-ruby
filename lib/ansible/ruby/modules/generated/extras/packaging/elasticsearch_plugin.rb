# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Elasticsearch_plugin < Base
        # @return [String] Name of the plugin to install. In ES 2.x, the name can be an url or file location
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Desired state of a plugin.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Set exact URL to download the plugin from (Only works for ES 1.x)
        attribute :url
        validates :url, type: String

        # @return [String, nil] Timeout setting: 30s, 1m, 1h...
        attribute :timeout
        validates :timeout, type: String

        # @return [String, nil] Location of the plugin binary
        attribute :plugin_bin
        validates :plugin_bin, type: String

        # @return [String, nil] Your configured plugin directory specified in Elasticsearch
        attribute :plugin_dir
        validates :plugin_dir, type: String

        # @return [String, nil] Proxy host to use during plugin installation
        attribute :proxy_host
        validates :proxy_host, type: String

        # @return [String, nil] Proxy port to use during plugin installation
        attribute :proxy_port
        validates :proxy_port, type: String

        # @return [String, nil] Version of the plugin to be installed. If plugin exists with previous version, it will NOT be updated
        attribute :version
        validates :version, type: String
      end
    end
  end
end
