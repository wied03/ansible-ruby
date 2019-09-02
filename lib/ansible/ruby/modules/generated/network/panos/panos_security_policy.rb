# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Security policies allow you to enforce rules and take action, and can be as general or specific as needed. The policy rules are compared against the incoming traffic in sequence, and because the first rule that matches the traffic is applied, the more specific rules must precede the more general ones.
      class Panos_security_policy < Base
        # @return [String] IP address (or hostname) of PAN-OS device being configured.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] Username credentials to use for auth unless I(api_key) is set.
        attribute :username
        validates :username, type: String

        # @return [String] Password credentials to use for auth unless I(api_key) is set.
        attribute :password
        validates :password, presence: true, type: String

        # @return [Object, nil] API key that can be used instead of I(username)/I(password) credentials.
        attribute :api_key

        # @return [String] Name of the security rule.
        attribute :rule_name
        validates :rule_name, presence: true, type: String

        # @return [String, nil] Type of security rule (version 6.1 of PanOS and above).
        attribute :rule_type
        validates :rule_type, type: String

        # @return [String, nil] Description for the security rule.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Administrative tags that can be added to the rule. Note, tags must be already defined.
        attribute :tag

        # @return [String, nil] List of source zones.
        attribute :from_zone
        validates :from_zone, type: String

        # @return [String, nil] List of destination zones.
        attribute :to_zone
        validates :to_zone, type: String

        # @return [String, nil] List of source addresses.
        attribute :source
        validates :source, type: String

        # @return [String, nil] Use users to enforce policy for individual users or a group of users.
        attribute :source_user
        validates :source_user, type: String

        # @return [String, nil] If you are using GlobalProtect with host information profile (HIP) enabled, you can also base the policy on information collected by GlobalProtect. For example, the user access level can be determined HIP that notifies the firewall about the user's local configuration.\r\n
        attribute :hip_profiles
        validates :hip_profiles, type: String

        # @return [String, nil] List of destination addresses.
        attribute :destination
        validates :destination, type: String

        # @return [String, nil] List of applications.
        attribute :application
        validates :application, type: String

        # @return [String, nil] List of services.
        attribute :service
        validates :service, type: String

        # @return [FalseClass, TrueClass, nil] Whether to log at session start.
        attribute :log_start
        validates :log_start, type: MultipleTypes.new(FalseClass, TrueClass)

        # @return [Boolean, nil] Whether to log at session end.
        attribute :log_end
        validates :log_end, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Action to apply once rules maches.
        attribute :action
        validates :action, type: String

        # @return [Object, nil] Security profile group that is already defined in the system. This property supersedes antivirus, vulnerability, spyware, url_filtering, file_blocking, data_filtering, and wildfire_analysis properties.\r\n
        attribute :group_profile

        # @return [String, nil] Name of the already defined antivirus profile.
        attribute :antivirus
        validates :antivirus, type: String

        # @return [String, nil] Name of the already defined vulnerability profile.
        attribute :vulnerability
        validates :vulnerability, type: String

        # @return [String, nil] Name of the already defined spyware profile.
        attribute :spyware
        validates :spyware, type: String

        # @return [String, nil] Name of the already defined url_filtering profile.
        attribute :url_filtering
        validates :url_filtering, type: String

        # @return [Object, nil] Name of the already defined file_blocking profile.
        attribute :file_blocking

        # @return [Object, nil] Name of the already defined data_filtering profile.
        attribute :data_filtering

        # @return [String, nil] Name of the already defined wildfire_analysis profile.
        attribute :wildfire_analysis
        validates :wildfire_analysis, type: String

        # @return [String, nil] Device groups are used for the Panorama interaction with Firewall(s). The group must exists on Panorama. If device group is not define we assume that we are contacting Firewall.\r\n
        attribute :devicegroup
        validates :devicegroup, type: String

        # @return [Boolean, nil] Commit configuration if changed.
        attribute :commit
        validates :commit, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
