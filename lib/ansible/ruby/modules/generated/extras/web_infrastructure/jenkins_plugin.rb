# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Ansible module which helps to manage Jenkins plugins.
      class Jenkins_plugin < Base
        # @return [String, nil] Name of the Jenkins group on the OS.
        attribute :group
        validates :group, type: String

        # @return [String, nil] Home directory of the Jenkins user.
        attribute :jenkins_home
        validates :jenkins_home, type: String

        # @return [String, nil] File mode applied on versioned plugins.
        attribute :mode
        validates :mode, type: String

        # @return [String] Plugin name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the Jenkins user on the OS.
        attribute :owner
        validates :owner, type: String

        # @return [String, nil] Option used to allow the user to overwrite any of the other options. To remove an option, set the value of the option to C(null).
        attribute :params
        validates :params, type: String

        # @return [:absent, :present, :pinned, :unpinned, :enabled, :disabled, :latest, nil] Desired plugin state.,If the C(latest) is set, the check for new version will be performed every time. This is suitable to keep the plugin up-to-date.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :pinned, :unpinned, :enabled, :disabled, :latest], :message=>"%{value} needs to be :absent, :present, :pinned, :unpinned, :enabled, :disabled, :latest"}, allow_nil: true

        # @return [Integer, nil] Server connection timeout in secs.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Integer, nil] Number of seconds after which a new copy of the I(update-center.json) file is downloaded. This is used to avoid the need to download the plugin to calculate its checksum when C(latest) is specified.,Set it to C(0) if no cache file should be used. In that case, the plugin file will always be downloaded to calculate its checksum when C(latest) is specified.
        attribute :updates_expiration
        validates :updates_expiration, type: Integer

        # @return [String, nil] URL of the Update Centre.,Used as the base URL to download the plugins and the I(update-center.json) JSON file.
        attribute :updates_url
        validates :updates_url, type: String

        # @return [String, nil] URL of the Jenkins server.
        attribute :url
        validates :url, type: String

        # @return [Float, nil] Plugin version number.,If this option is specified, all plugin dependencies must be installed manually.,It might take longer to verify that the correct version is installed. This is especially true if a specific version number is specified.
        attribute :version
        validates :version, type: Float

        # @return [:yes, :no, nil] Defines whether to install plugin dependencies.
        attribute :with_dependencies
        validates :with_dependencies, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
