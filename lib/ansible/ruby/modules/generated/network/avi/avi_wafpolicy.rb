# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure WafPolicy object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_wafpolicy < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Creator name.,Field introduced in 17.2.4.
        attribute :created_by

        # @return [Object, nil] Waf rules are categorized in to groups based on their characterization.,These groups are system created with crs groups.,Field introduced in 17.2.1.
        attribute :crs_groups

        # @return [Object, nil] Field introduced in 17.2.1.
        attribute :description

        # @return [Object] Waf policy mode.,This can be detection or enforcement.,Enum options - WAF_MODE_DETECTION_ONLY, WAF_MODE_ENFORCEMENT.,Field introduced in 17.2.1.,Default value when not specified in API or module is interpreted by Avi Controller as WAF_MODE_DETECTION_ONLY.
        attribute :mode
        validates :mode, presence: true

        # @return [String] Field introduced in 17.2.1.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Waf ruleset paranoia  mode.,This is used to select rules based on the paranoia-level tag.,Enum options - WAF_PARANOIA_LEVEL_LOW, WAF_PARANOIA_LEVEL_MEDIUM, WAF_PARANOIA_LEVEL_HIGH, WAF_PARANOIA_LEVEL_EXTREME.,Field introduced in 17.2.1.,Default value when not specified in API or module is interpreted by Avi Controller as WAF_PARANOIA_LEVEL_LOW.
        attribute :paranoia_level

        # @return [Object, nil] Waf rules are categorized in to groups based on their characterization.,These groups are created by the user and will be enforced after the crs groups.,Field introduced in 17.2.1.
        attribute :post_crs_groups

        # @return [Object, nil] Waf rules are categorized in to groups based on their characterization.,These groups are created by the user and will be  enforced before the crs groups.,Field introduced in 17.2.1.
        attribute :pre_crs_groups

        # @return [Object, nil] It is a reference to an object of type tenant.,Field introduced in 17.2.1.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Field introduced in 17.2.1.
        attribute :uuid

        # @return [Object] Waf profile for waf policy.,It is a reference to an object of type wafprofile.,Field introduced in 17.2.1.
        attribute :waf_profile_ref
        validates :waf_profile_ref, presence: true
      end
    end
  end
end
