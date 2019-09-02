# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify, enable, disable and delete an IPA Lightweight Sub Certificate Authorities using IPA API.
      class Ipa_subca < Base
        # @return [String] The Sub Certificate Authority name which needs to be managed.
        attribute :subca_name
        validates :subca_name, presence: true, type: String

        # @return [Array<String>, String] The Sub Certificate Authority's Subject. e.g., 'CN=SampleSubCA1,O=testrelm.test'
        attribute :subca_subject
        validates :subca_subject, presence: true, type: TypeGeneric.new(String)

        # @return [String] The Sub Certificate Authority's description.
        attribute :subca_desc
        validates :subca_desc, presence: true, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] State to ensure,State 'disable' and 'enable' is available for FreeIPA 4.4.2 version and onwards
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
