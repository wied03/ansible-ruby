# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and renew SSL/TLS certificates with a CA supporting the L(ACME protocol,https://tools.ietf.org/html/draft-ietf-acme-acme-14), such as L(Let's Encrypt,https://letsencrypt.org/). The current implementation supports the C(http-01), C(dns-01) and C(tls-alpn-01) challenges.
      # To use this module, it has to be executed twice. Either as two different tasks in the same run or during two runs. Note that the output of the first run needs to be recorded and passed to the second run as the module argument C(data).
      # Between these two tasks you have to fulfill the required steps for the chosen challenge by whatever means necessary. For C(http-01) that means creating the necessary challenge file on the destination webserver. For C(dns-01) the necessary dns record has to be created. For C(tls-alpn-01) the necessary certificate has to be created and served. It is I(not) the responsibility of this module to perform these steps.
      # For details on how to fulfill these challenges, you might have to read through L(the main ACME specification,https://tools.ietf.org/html/draft-ietf-acme-acme-14#section-8) and the L(TLS-ALPN-01 specification,https://tools.ietf.org/html/draft-ietf-acme-tls-alpn-05#section-3). Also, consider the examples provided for this module.
      class Acme_certificate < Base
        # @return [String, nil] The email address associated with this account.,It will be used for certificate expiration warnings.,Note that when C(modify_account) is not set to C(no) and you also used the M(acme_account) module to specify more than one contact for your account, this module will update your account and restrict it to the (at most one) contact email address specified here.
        attribute :account_email
        validates :account_email, type: String

        # @return [Object, nil] URI to a terms of service document you agree to when using the ACME v1 service at C(acme_directory).,Default is latest gathered from C(acme_directory) URL.,This option will only be used when C(acme_version) is 1.
        attribute :agreement

        # @return [:yes, :no, nil] Boolean indicating whether you agree to the terms of service document.,ACME servers can require this to be true.,This option will only be used when C(acme_version) is not 1.
        attribute :terms_agreed
        validates :terms_agreed, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Boolean indicating whether the module should create the account if necessary, and update its contact data.,Set to C(no) if you want to use the M(acme_account) module to manage your account instead, and to avoid accidental creation of a new account using an old key if you changed the account key with M(acme_account).,If set to C(no), C(terms_agreed) and C(account_email) are ignored.
        attribute :modify_account
        validates :modify_account, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:"http-01", :"dns-01", :"tls-alpn-01", nil] The challenge to be performed.
        attribute :challenge
        validates :challenge, inclusion: {:in=>[:"http-01", :"dns-01", :"tls-alpn-01"], :message=>"%{value} needs to be :\"http-01\", :\"dns-01\", :\"tls-alpn-01\""}, allow_nil: true

        # @return [String] File containing the CSR for the new certificate.,Can be created with C(openssl req ...).,The CSR may contain multiple Subject Alternate Names, but each one will lead to an individual challenge that must be fulfilled for the CSR to be signed.,I(Note): the private key used to create the CSR I(must not) be the account key. This is a bad idea from a security point of view, and the CA should not accept the CSR. The ACME server should return an error in this case.
        attribute :csr
        validates :csr, presence: true, type: String

        # @return [String, nil] The data to validate ongoing challenges. This must be specified for the second run of the module only.,The value that must be used here will be provided by a previous use of this module. See the examples for more details.,Note that for ACME v2, only the C(order_uri) entry of C(data) will be used. For ACME v1, C(data) must be non-empty to indicate the second stage is active; all needed data will be taken from the CSR.,I(Note): the C(data) option was marked as C(no_log) up to Ansible 2.5. From Ansible 2.6 on, it is no longer marked this way as it causes error messages to be come unusable, and C(data) does not contain any information which can be used without having access to the account key or which are not public anyway.
        attribute :data
        validates :data, type: String

        # @return [String, nil] The destination file for the certificate.,Required if C(fullchain_dest) is not specified.
        attribute :dest
        validates :dest, type: String

        # @return [String, nil] The destination file for the full chain (i.e. certificate followed by chain of intermediate certificates).,Required if C(dest) is not specified.
        attribute :fullchain_dest
        validates :fullchain_dest, type: String

        # @return [String, nil] If specified, the intermediate certificate will be written to this file.
        attribute :chain_dest
        validates :chain_dest, type: String

        # @return [Integer, nil] The number of days the certificate must have left being valid. If C(cert_days < remaining_days), then it will be renewed. If the certificate is not renewed, module return values will not include C(challenge_data).,To make sure that the certificate is renewed in any case, you can use the C(force) option.
        attribute :remaining_days
        validates :remaining_days, type: Integer

        # @return [:yes, :no, nil] Deactivate authentication objects (authz) after issuing a certificate, or when issuing the certificate failed.,Authentication objects are bound to an account key and remain valid for a certain amount of time, and can be used to issue certificates without having to re-authenticate the domain. This can be a security concern.
        attribute :deactivate_authzs
        validates :deactivate_authzs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Enforces the execution of the challenge and validation, even if an existing certificate is still valid for more than C(remaining_days).,This is especially helpful when having an updated CSR e.g. with additional domains for which a new certificate is desired.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
