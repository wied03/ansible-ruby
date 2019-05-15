# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages base ACL configurations on HUAWEI CloudEngine switches.
      class Ce_acl < Base
        # @return [:present, :absent, :delete_acl, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :delete_acl], :message=>"%{value} needs to be :present, :absent, :delete_acl"}, allow_nil: true

        # @return [Object] ACL number or name. For a numbered rule group, the value ranging from 2000 to 2999 indicates a basic ACL. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.
        attribute :acl_name
        validates :acl_name, presence: true

        # @return [Object, nil] ACL number. The value is an integer ranging from 2000 to 2999.
        attribute :acl_num

        # @return [Object, nil] ACL step. The value is an integer ranging from 1 to 20. The default value is 5.
        attribute :acl_step

        # @return [Object, nil] ACL description. The value is a string of 1 to 127 characters.
        attribute :acl_description

        # @return [Object, nil] Name of a basic ACL rule. The value is a string of 1 to 32 characters. The value is case-insensitive, and cannot contain spaces or begin with an underscore (_).
        attribute :rule_name

        # @return [Object, nil] ID of a basic ACL rule in configuration mode. The value is an integer ranging from 0 to 4294967294.
        attribute :rule_id

        # @return [:permit, :deny, nil] Matching mode of basic ACL rules.
        attribute :rule_action
        validates :rule_action, inclusion: {:in=>[:permit, :deny], :message=>"%{value} needs to be :permit, :deny"}, allow_nil: true

        # @return [Object, nil] Source IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.
        attribute :source_ip

        # @return [Object, nil] Mask of a source IP address. The value is an integer ranging from 1 to 32.
        attribute :src_mask

        # @return [:fragment, :clear_fragment, nil] Type of packet fragmentation.
        attribute :frag_type
        validates :frag_type, inclusion: {:in=>[:fragment, :clear_fragment], :message=>"%{value} needs to be :fragment, :clear_fragment"}, allow_nil: true

        # @return [Object, nil] VPN instance name. The value is a string of 1 to 31 characters.The default value is _public_.
        attribute :vrf_name

        # @return [Object, nil] Name of a time range in which an ACL rule takes effect. The value is a string of 1 to 32 characters. The value is case-insensitive, and cannot contain spaces. The name must start with an uppercase or lowercase letter. In addition, the word "all" cannot be specified as a time range name.
        attribute :time_range

        # @return [Object, nil] Description about an ACL rule. The value is a string of 1 to 127 characters.
        attribute :rule_description

        # @return [String, nil] Flag of logging matched data packets.
        attribute :log_flag
        validates :log_flag, type: String
      end
    end
  end
end
