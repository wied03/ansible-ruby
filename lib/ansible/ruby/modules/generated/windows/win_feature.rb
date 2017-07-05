# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs or uninstalls Windows Roles or Features on Windows Server. This module uses the Add/Remove-WindowsFeature Cmdlets on Windows 2008 and Install/Uninstall-WindowsFeature Cmdlets on Windows 2012, which are not available on client os machines.
      class Win_feature < Base
        # @return [Array<String>, String] Names of roles or features to install as a single feature or a comma-separated list of features
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State of the features or roles on the system
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Restarts the computer automatically when installation is complete, if restarting is required by the roles or features installed.
        attribute :restart
        validates :restart, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Adds all subfeatures of the specified feature
        attribute :include_sub_features
        validates :include_sub_features, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Adds the corresponding management tools to the specified feature.,Not supported in Windows 2008. If present when using Windows 2008 this option will be ignored.
        attribute :include_management_tools
        validates :include_management_tools, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:" {driveletter}:\\sources\\sxs", :" {IP}\\Share\\sources\\sxs", nil] Specify a source to install the feature from.,Not supported in Windows 2008. If present when using Windows 2008 this option will be ignored.
        attribute :source
        validates :source, inclusion: {:in=>[:" {driveletter}:\\sources\\sxs", :" {IP}\\Share\\sources\\sxs"], :message=>"%{value} needs to be :\" {driveletter}:\\\\sources\\\\sxs\", :\" {IP}\\\\Share\\\\sources\\\\sxs\""}, allow_nil: true
      end
    end
  end
end
