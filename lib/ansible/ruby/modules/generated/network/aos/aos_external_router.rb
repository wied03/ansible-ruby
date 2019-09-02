# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apstra AOS External Router module let you manage your External Router easily. You can create create and delete External Router by Name, ID or by using a JSON File. This module is idempotent and support the I(check) mode. It's using the AOS REST API.
      class Aos_external_router < Base
        # @return [String] An existing AOS session as obtained by M(aos_login) module.
        attribute :session
        validates :session, presence: true, type: String

        # @return [String, nil] Name of the External Router to manage. Only one of I(name), I(id) or I(content) can be set.
        attribute :name
        validates :name, type: String

        # @return [String, nil] AOS Id of the External Router to manage (can't be used to create a new External Router), Only one of I(name), I(id) or I(content) can be set.
        attribute :id
        validates :id, type: String

        # @return [String, nil] Datastructure of the External Router to create. The format is defined by the I(content_format) parameter. It's the same datastructure that is returned on success in I(value).
        attribute :content
        validates :content, type: String

        # @return [:present, :absent, nil] Indicate what is the expected state of the External Router (present or not).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] IP address of the Loopback interface of the external_router.
        attribute :loopback
        validates :loopback, type: String

        # @return [Integer, nil] ASN id of the external_router.
        attribute :asn
        validates :asn, type: Integer
      end
    end
  end
end
