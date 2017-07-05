# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs packages using Web Platform Installer command-line (http://www.iis.net/learn/install/web-platform-installer/web-platform-installer-v4-command-line-webpicmdexe-rtw-release).
      # Must be installed and present in PATH (see win_chocolatey module; 'webpicmd' is the package name, and you must install 'lessmsi' first too)
      # Install IIS first (see win_feature module)
      class Win_webpicmd < Base
        # @return [Object] Name of the package to be installed
        attribute :name
        validates :name, presence: true
      end
    end
  end
end
