# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Searches, downloads, and installs Windows updates synchronously by automating the Windows Update client
      class Win_updates < Base
        # @return [:Application, :Connectors, :CriticalUpdates, :DefinitionUpdates, :DeveloperKits, :FeaturePacks, :Guidance, :SecurityUpdates, :ServicePacks, :Tools, :UpdateRollups, :Updates, nil] A scalar or list of categories to install updates from
        attribute :category_names
        validates :category_names, inclusion: {:in=>[:Application, :Connectors, :CriticalUpdates, :DefinitionUpdates, :DeveloperKits, :FeaturePacks, :Guidance, :SecurityUpdates, :ServicePacks, :Tools, :UpdateRollups, :Updates], :message=>"%{value} needs to be :Application, :Connectors, :CriticalUpdates, :DefinitionUpdates, :DeveloperKits, :FeaturePacks, :Guidance, :SecurityUpdates, :ServicePacks, :Tools, :UpdateRollups, :Updates"}, allow_nil: true

        # @return [:installed, :searched, nil] Controls whether found updates are returned as a list or actually installed.,This module also supports Ansible check mode, which has the same effect as setting state=searched
        attribute :state
        validates :state, inclusion: {:in=>[:installed, :searched], :message=>"%{value} needs to be :installed, :searched"}, allow_nil: true

        # @return [String, nil] If set, win_updates will append update progress to the specified file. The directory must already exist.
        attribute :log_path
        validates :log_path, type: String
      end
    end
  end
end
