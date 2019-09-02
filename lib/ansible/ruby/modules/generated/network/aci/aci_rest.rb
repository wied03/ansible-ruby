# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enables the management of the Cisco ACI fabric through direct access to the Cisco APIC REST API.
      # Thanks to the idempotent nature of the APIC, this module is idempotent and reports changes.
      class Aci_rest < Base
        # @return [:delete, :get, :post, nil] The HTTP method of the request.,Using C(delete) is typically used for deleting objects.,Using C(get) is typically used for querying objects.,Using C(post) is typically used for modifying objects.
        attribute :method
        validates :method, expression_inclusion: {:in=>[:delete, :get, :post], :message=>"%{value} needs to be :delete, :get, :post"}, allow_nil: true

        # @return [Array<String>, String] URI being used to execute API calls.,Must end in C(.xml) or C(.json).
        attribute :path
        validates :path, presence: true, type: TypeGeneric.new(String)

        # @return [String, Hash, nil] When used instead of C(src), sets the payload of the API request directly.,This may be convenient to template simple requests.,For anything complex use the C(template) lookup plugin (see examples) or the M(template) module with parameter C(src).
        attribute :content
        validates :content, type: MultipleTypes.new(String, Hash)

        # @return [String, nil] Name of the absolute path of the filname that includes the body of the HTTP request being sent to the ACI fabric.,If you require a templated payload, use the C(content) parameter together with the C(template) lookup plugin, or use M(template).
        attribute :src
        validates :src, type: String
      end
    end
  end
end
