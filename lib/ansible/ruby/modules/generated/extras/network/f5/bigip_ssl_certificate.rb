# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will import/delete SSL certificates on BIG-IP LTM. Certificates can be imported from certificate and key files on the local disk, in PEM format.
      class Bigip_ssl_certificate < Base
        # @return [String, nil] When used instead of 'cert_src', sets the contents of a certificate directly to the specified value. This is used with lookup plugins or for anything with formatting or templating. Either one of C(key_src), C(key_content), C(cert_src) or C(cert_content) must be provided when C(state) is C(present).
        attribute :cert_content
        validates :cert_content, type: String

        # @return [String, nil] When used instead of 'key_src', sets the contents of a certificate key directly to the specified value. This is used with lookup plugins or for anything with formatting or templating. Either one of C(key_src), C(key_content), C(cert_src) or C(cert_content) must be provided when C(state) is C(present).
        attribute :key_content
        validates :key_content, type: String

        # @return [:present, :absent] Certificate and key state. This determines if the provided certificate and key is to be made C(present) on the device or C(absent).
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] BIG-IP partition to use when adding/deleting certificate.
        attribute :partition
        validates :partition, type: String

        # @return [String] SSL Certificate Name.  This is the cert/key pair name used when importing a certificate/key into the F5. It also determines the filenames of the objects on the LTM (:Partition:name.cer_11111_1 and :Partition_name.key_11111_1).
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] This is the local filename of the certificate. Either one of C(key_src), C(key_content), C(cert_src) or C(cert_content) must be provided when C(state) is C(present).
        attribute :cert_src
        validates :cert_src, type: String

        # @return [String, nil] This is the local filename of the private key. Either one of C(key_src), C(key_content), C(cert_src) or C(cert_content) must be provided when C(state) is C(present).
        attribute :key_src
        validates :key_src, type: String

        # @return [Object, nil] Passphrase on certificate private key
        attribute :passphrase
      end
    end
  end
end
