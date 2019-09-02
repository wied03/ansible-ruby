# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apstra AOS ASN Pool module let you manage your ASN Pool easily. You can create and delete ASN Pool by Name, ID or by using a JSON File. This module is idempotent and support the I(check) mode. It's using the AOS REST API.
      class Aos_asn_pool < Base
        # @return [String] An existing AOS session as obtained by M(aos_login) module.
        attribute :session
        validates :session, presence: true, type: String

        # @return [String, nil] Name of the ASN Pool to manage. Only one of I(name), I(id) or I(content) can be set.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] AOS Id of the ASN Pool to manage. Only one of I(name), I(id) or I(content) can be set.
        attribute :id

        # @return [String, nil] Datastructure of the ASN Pool to manage. The data can be in YAML / JSON or directly a variable. It's the same datastructure that is returned on success in I(value).
        attribute :content
        validates :content, type: String

        # @return [:present, :absent, nil] Indicate what is the expected state of the ASN Pool (present or not).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<Array>, Array, nil] List of ASNs ranges to add to the ASN Pool. Each range must have 2 values.
        attribute :ranges
        validates :ranges, type: TypeGeneric.new(Array)
      end
    end
  end
end
