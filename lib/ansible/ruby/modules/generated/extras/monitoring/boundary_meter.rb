# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Boundary_meter < Base
        # @return [String] meter name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether to create or remove the client from boundary
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Organizations boundary API ID
        attribute :apiid
        validates :apiid, presence: true, type: String

        # @return [Object] Organizations boundary API KEY
        attribute :apikey
        validates :apikey, presence: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
