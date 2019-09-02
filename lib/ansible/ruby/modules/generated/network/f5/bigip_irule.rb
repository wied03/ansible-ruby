# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage iRules across different modules on a BIG-IP.
      class Bigip_irule < Base
        # @return [String, nil] When used instead of 'src', sets the contents of an iRule directly to the specified value. This is for simple values, but can be used with lookup plugins for anything complex or with formatting. Either one of C(src) or C(content) must be provided.
        attribute :content
        validates :content, type: String

        # @return [:ltm, :gtm] The BIG-IP module to add the iRule to.
        attribute :module
        validates :module, presence: true, expression_inclusion: {:in=>[:ltm, :gtm], :message=>"%{value} needs to be :ltm, :gtm"}

        # @return [String] The name of the iRule.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The iRule file to interpret and upload to the BIG-IP. Either one of C(src) or C(content) must be provided.
        attribute :src
        validates :src, presence: true, type: String

        # @return [:present, :absent, nil] Whether the iRule should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
