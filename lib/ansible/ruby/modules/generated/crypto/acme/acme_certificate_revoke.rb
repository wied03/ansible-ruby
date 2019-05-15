# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows to revoke certificates issued by a CA supporting the L(ACME protocol,https://tools.ietf.org/html/draft-ietf-acme-acme-14), such as L(Let's Encrypt,https://letsencrypt.org/).
      class Acme_certificate_revoke < Base
        # @return [String] Path to the certificate to revoke.
        attribute :certificate
        validates :certificate, presence: true, type: String

        # @return [String, nil] Path to a file containing the ACME account RSA or Elliptic Curve key.,RSA keys can be created with C(openssl rsa ...). Elliptic curve keys can be created with C(openssl ecparam -genkey ...). Any other tool creating private keys in PEM format can be used as well.,Mutually exclusive with C(account_key_content).,Required if C(account_key_content) is not used.
        attribute :account_key_src
        validates :account_key_src, type: String

        # @return [Object, nil] Content of the ACME account RSA or Elliptic Curve key.,Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.,I(Warning): the content will be written into a temporary file, which will be deleted by Ansible when the module completes. Since this is an important private key — it can be used to change the account key, or to revoke your certificates without knowing their private keys —, this might not be acceptable.,In case C(cryptography) is used, the content is not written into a temporary file. It can still happen that it is written to disk by Ansible in the process of moving the module with its argument to the node where it is executed.
        attribute :account_key_content

        # @return [String, nil] Path to the certificate's private key.,Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.
        attribute :private_key_src
        validates :private_key_src, type: String

        # @return [Object, nil] Content of the certificate's private key.,Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.,I(Warning): the content will be written into a temporary file, which will be deleted by Ansible when the module completes. Since this is an important private key — it can be used to change the account key, or to revoke your certificates without knowing their private keys —, this might not be acceptable.,In case C(cryptography) is used, the content is not written into a temporary file. It can still happen that it is written to disk by Ansible in the process of moving the module with its argument to the node where it is executed.
        attribute :private_key_content

        # @return [Object, nil] One of the revocation reasonCodes defined in L(https://tools.ietf.org/html/rfc5280#section-5.3.1, Section 5.3.1 of RFC5280).,Possible values are C(0) (unspecified), C(1) (keyCompromise), C(2) (cACompromise), C(3) (affiliationChanged), C(4) (superseded), C(5) (cessationOfOperation), C(6) (certificateHold), C(8) (removeFromCRL), C(9) (privilegeWithdrawn), C(10) (aACompromise)
        attribute :revoke_reason
      end
    end
  end
end
