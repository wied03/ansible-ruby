# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to make changes to the system wide Audit Policy.
      # It is recommended to take a backup of the policies before adjusting them for the first time.
      # See this page for in depth information U(https://technet.microsoft.com/en-us/library/cc766468.aspx).
      class Win_audit_policy_system < Base
        # @return [String, nil] Single string value for the category you would like to adjust the policy on.,Cannot be used with I(subcategory). You must define one or the other.,Changing this setting causes all subcategories to be adjusted to the defined I(audit_type).
        attribute :category
        validates :category, type: String

        # @return [String, nil] Single string value for the subcategory you would like to adjust the policy on.,Cannot be used with I(category). You must define one or the other.
        attribute :subcategory
        validates :subcategory, type: String

        # @return [:failure, :none, :success] The type of event you would like to audit for.,Accepts a list. See examples.
        attribute :audit_type
        validates :audit_type, presence: true, inclusion: {:in=>[:failure, :none, :success], :message=>"%{value} needs to be :failure, :none, :success"}
      end
    end
  end
end
