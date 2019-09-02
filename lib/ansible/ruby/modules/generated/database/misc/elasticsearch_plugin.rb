# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Elasticsearch plugins.
      class Elasticsearch_plugin < Base
        # @return [String] Name of the plugin to install.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Desired state of a plugin.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Optionally set the source location to retrieve the plugin from. This can be a file:// URL to install from a local file, or a remote URL. If this is not set, the plugin location is just based on the name.,The name parameter must match the descriptor in the plugin ZIP specified.,Is only used if the state would change, which is solely checked based on the name parameter. If, for example, the plugin is already installed, changing this has no effect.,For ES 1.x use url.
        attribute :src

        # @return [Object, nil] Set exact URL to download the plugin from (Only works for ES 1.x).,For ES 2.x and higher, use src.
        attribute :url

        # @return [String, nil] Timeout setting: 30s, 1m, 1h...,Only valid for Elasticsearch < 5.0. This option is ignored for Elasticsearch > 5.0.
        attribute :timeout
        validates :timeout, type: String

        # @return [Boolean, nil] Force batch mode when installing plugins. This is only necessary if a plugin requires additional permissions and console detection fails.
        attribute :force
        validates :force, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Location of the plugin binary. If this file is not found, the default plugin binaries will be used.,The default changed in Ansible 2.4 to None.
        attribute :plugin_bin

        # @return [String, nil] Your configured plugin directory specified in Elasticsearch
        attribute :plugin_dir
        validates :plugin_dir, type: String

        # @return [Object, nil] Proxy host to use during plugin installation
        attribute :proxy_host

        # @return [Object, nil] Proxy port to use during plugin installation
        attribute :proxy_port

        # @return [String, nil] Version of the plugin to be installed. If plugin exists with previous version, it will NOT be updated
        attribute :version
        validates :version, type: String
      end
    end
  end
end
