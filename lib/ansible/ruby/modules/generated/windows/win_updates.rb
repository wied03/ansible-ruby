# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Searches, downloads, and installs Windows updates synchronously by automating the Windows Update client.
      class Win_updates < Base
        # @return [Array<String>, String, nil] A list of update titles or KB numbers that can be used to specify which updates are to be excluded from installation.,If an available update does match one of the entries, then it is skipped and not installed.,Each entry can either be the KB article or Update title as a regex according to the PowerShell regex rules.
        attribute :blacklist
        validates :blacklist, type: TypeGeneric.new(String)

        # @return [:Application, :Connectors, :CriticalUpdates, :DefinitionUpdates, :DeveloperKits, :FeaturePacks, :Guidance, :SecurityUpdates, :ServicePacks, :Tools, :UpdateRollups, :Updates, nil] A scalar or list of categories to install updates from
        attribute :category_names
        validates :category_names, inclusion: {:in=>[:Application, :Connectors, :CriticalUpdates, :DefinitionUpdates, :DeveloperKits, :FeaturePacks, :Guidance, :SecurityUpdates, :ServicePacks, :Tools, :UpdateRollups, :Updates], :message=>"%{value} needs to be :Application, :Connectors, :CriticalUpdates, :DefinitionUpdates, :DeveloperKits, :FeaturePacks, :Guidance, :SecurityUpdates, :ServicePacks, :Tools, :UpdateRollups, :Updates"}, allow_nil: true

        # @return [String, nil] Ansible will automatically reboot the remote host if it is required and continue to install updates after the reboot.,This can be used instead of using a M(win_reboot) task after this one and ensures all updates for that category is installed in one go.,Async does not work when C(reboot=True).
        attribute :reboot
        validates :reboot, type: String

        # @return [Integer, nil] The time in seconds to wait until the host is back online from a reboot.,This is only used if C(reboot=True) and a reboot is required.
        attribute :reboot_timeout
        validates :reboot_timeout, type: Integer

        # @return [:installed, :searched, nil] Controls whether found updates are returned as a list or actually installed.,This module also supports Ansible check mode, which has the same effect as setting state=searched
        attribute :state
        validates :state, inclusion: {:in=>[:installed, :searched], :message=>"%{value} needs to be :installed, :searched"}, allow_nil: true

        # @return [String, nil] If set, C(win_updates) will append update progress to the specified file. The directory must already exist.
        attribute :log_path
        validates :log_path, type: String

        # @return [Array<String>, String, nil] A list of update titles or KB numbers that can be used to specify which updates are to be searched or installed.,If an available update does not match one of the entries, then it is skipped and not installed.,Each entry can either be the KB article or Update title as a regex according to the PowerShell regex rules.,The whitelist is only validated on updates that were found based on I(category_names). It will not force the module to install an update if it was not in the category specified.
        attribute :whitelist
        validates :whitelist, type: TypeGeneric.new(String)

        # @return [String, nil] Will not auto elevate the remote process with I(become) and use a scheduled task instead.,Set this to C(yes) when using this module with async on Server 2008, 2008 R2, or Windows 7, or on Server 2008 that is not authenticated with basic or credssp.,Can also be set to C(yes) on newer hosts where become does not work due to further privilege restrictions from the OS defaults.
        attribute :use_scheduled_task
        validates :use_scheduled_task, type: String
      end
    end
  end
end
