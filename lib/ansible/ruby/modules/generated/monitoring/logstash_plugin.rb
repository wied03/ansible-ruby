# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Logstash plugins.
      class Logstash_plugin < Base
        # @return [String] Install plugin with that name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Apply plugin state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Specify logstash-plugin to use for plugin management.
        attribute :plugin_bin
        validates :plugin_bin, type: String

        # @return [Object, nil] Proxy host to use during plugin installation.
        attribute :proxy_host

        # @return [Object, nil] Proxy port to use during plugin installation.
        attribute :proxy_port

        # @return [String, nil] Specify plugin Version of the plugin to install. If plugin exists with previous version, it will NOT be updated.
        attribute :version
        validates :version, type: String
      end
    end
  end
end
