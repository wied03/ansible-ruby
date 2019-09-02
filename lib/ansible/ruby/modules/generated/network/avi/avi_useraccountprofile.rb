# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure UserAccountProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_useraccountprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Lock timeout period (in minutes).,Default is 30 minutes.,Default value when not specified in API or module is interpreted by Avi Controller as 30.,Units(MIN).
        attribute :account_lock_timeout

        # @return [Object, nil] The time period after which credentials expire.,Default is 180 days.,Default value when not specified in API or module is interpreted by Avi Controller as 180.,Units(DAYS).
        attribute :credentials_timeout_threshold

        # @return [Object, nil] Maximum number of concurrent sessions allowed.,There are unlimited sessions by default.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :max_concurrent_sessions

        # @return [Object, nil] Number of login attempts before lockout.,Default is 3 attempts.,Default value when not specified in API or module is interpreted by Avi Controller as 3.
        attribute :max_login_failure_count

        # @return [Object, nil] Maximum number of passwords to be maintained in the password history.,Default is 4 passwords.,Default value when not specified in API or module is interpreted by Avi Controller as 4.
        attribute :max_password_history_count

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end
