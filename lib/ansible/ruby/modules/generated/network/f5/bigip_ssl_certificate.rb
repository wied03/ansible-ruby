# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will import/delete SSL certificates on BIG-IP LTM. Certificates can be imported from certificate and key files on the local disk, in PEM format.
      class Bigip_ssl_certificate < Base
        # @return [String, nil] Sets the contents of a certificate directly to the specified value. This is used with lookup plugins or for anything with formatting or,C(content) must be provided when C(state) is C(present).
        attribute :content
        validates :content, type: String

        # @return [:present, :absent, nil] Certificate state. This determines if the provided certificate and key is to be made C(present) on the device or C(absent).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] SSL Certificate Name. This is the cert name used when importing a certificate into the F5. It also determines the filenames of the objects on the LTM.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Issuer certificate used for OCSP monitoring.,This parameter is only valid on versions of BIG-IP 13.0.0 or above.
        attribute :issuer_cert

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
