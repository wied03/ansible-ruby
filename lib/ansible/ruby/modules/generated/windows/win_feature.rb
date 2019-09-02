# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs or uninstalls Windows Roles or Features on Windows Server. This module uses the Add/Remove-WindowsFeature Cmdlets on Windows 2008 R2 and Install/Uninstall-WindowsFeature Cmdlets on Windows 2012, which are not available on client os machines.
      class Win_feature < Base
        # @return [Array<String>, String] Names of roles or features to install as a single feature or a comma-separated list of features.
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] State of the features or roles on the system.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Adds all subfeatures of the specified feature.
        attribute :include_sub_features
        validates :include_sub_features, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Adds the corresponding management tools to the specified feature.,Not supported in Windows 2008 R2 and will be ignored.
        attribute :include_management_tools
        validates :include_management_tools, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specify a source to install the feature from.,Not supported in Windows 2008 R2 and will be ignored.,Can either be C({driveletter}:\sources\sxs) or C(\\{IP}\share\sources\sxs).
        attribute :source
        validates :source, type: String
      end
    end
  end
end
