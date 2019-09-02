# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages application service deployments via the App Services Extension functionality in BIG-IP.
      class Bigip_appsvcs_extension < Base
        # @return [String] Declaration of tenants configured on the system.,This parameter is most often used along with the C(file) or C(template) lookup plugins. Refer to the examples section for correct usage.,For anything advanced or with formatting consider using the C(template) lookup.,This can additionally be used for specifying application service configurations directly in YAML, however that is not an encouraged practice and, if used at all, should only be used for the absolute smallest of configurations to prevent your Playbooks from becoming too large.,If you C(content) includes encrypted values (such as ciphertexts, passphrases, etc), the returned C(changed) value will always be true.
        attribute :content
        validates :content, presence: true, type: String

        # @return [Array<String>, String, nil] A list of tenants that you want to remove.,This parameter is only relevant when C(state) is C(absent). It will be ignored when C(state) is C(present).,A value of C(all) will remove all tenants.,Tenants can be specified as a list as well to remove only specific tenants.
        attribute :tenants
        validates :tenants, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Force updates a declaration.,This parameter should be used in cases where your declaration includes items that are encrypted or in cases (such as WAF Policies) where you want a large reload to take place.
        attribute :force
        validates :force, type: Symbol

        # @return [:present, :absent, nil] When C(state) is C(present), ensures the configuration exists.,When C(state) is C(absent), ensures that the configuration is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
