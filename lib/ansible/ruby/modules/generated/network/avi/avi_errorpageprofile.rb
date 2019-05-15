# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ErrorPageProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_errorpageprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Name of the virtual service which generated the error page.,Field introduced in 17.2.4.,Default value when not specified in API or module is interpreted by Avi Controller as VS Name.
        attribute :app_name

        # @return [Object, nil] Name of the company to show in error page.,Field introduced in 17.2.4.,Default value when not specified in API or module is interpreted by Avi Controller as Avi Networks.
        attribute :company_name

        # @return [Object, nil] Defined error pages for http status codes.,Field introduced in 17.2.4.
        attribute :error_pages

        # @return [Object, nil] Fully qualified domain name for which the error page is generated.,Field introduced in 17.2.4.,Default value when not specified in API or module is interpreted by Avi Controller as Host Header.
        attribute :host_name

        # @return [String] Field introduced in 17.2.4.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] It is a reference to an object of type tenant.,Field introduced in 17.2.4.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Field introduced in 17.2.4.
        attribute :uuid
      end
    end
  end
end
