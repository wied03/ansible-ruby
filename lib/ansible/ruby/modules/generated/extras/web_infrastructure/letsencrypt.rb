# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and renew SSL certificates with Let's Encrypt. Let’s Encrypt is a free, automated, and open certificate authority (CA), run for the public’s benefit. For details see U(https://letsencrypt.org). The current implementation supports the http-01, tls-sni-02 and dns-01 challenges.
      # To use this module, it has to be executed at least twice. Either as two different tasks in the same run or during multiple runs.
      # Between these two tasks you have to fulfill the required steps for the choosen challenge by whatever means necessary. For http-01 that means creating the necessary challenge file on the destination webserver. For dns-01 the necessary dns record has to be created. tls-sni-02 requires you to create a SSL certificate with the appropriate subjectAlternativeNames. It is I(not) the responsibility of this module to perform these steps.
      # For details on how to fulfill these challenges, you might have to read through U(https://tools.ietf.org/html/draft-ietf-acme-acme-02#section-7)
      # Although the defaults are choosen so that the module can be used with the Let's Encrypt CA, the module can be used with any service using the ACME protocol.
      class Letsencrypt < Base
        # @return [String] File containing the the Let's Encrypt account RSA key.,Can be created with C(openssl rsa ...).
        attribute :account_key
        validates :account_key, presence: true, type: String

        # @return [Object, nil] The email address associated with this account.,It will be used for certificate expiration warnings.
        attribute :account_email

        # @return [String, nil] The ACME directory to use. This is the entry point URL to access CA server API.,For safety reasons the default is set to the Let's Encrypt staging server. This will create technically correct, but untrusted certificates.
        attribute :acme_directory
        validates :acme_directory, type: String

        # @return [String, nil] URI to a terms of service document you agree to when using the ACME service at C(acme_directory).
        attribute :agreement
        validates :agreement, type: String

        # @return [:"http-01", :"dns-01", :"tls-sni-02", nil] The challenge to be performed.
        attribute :challenge
        validates :challenge, inclusion: {:in=>[:"http-01", :"dns-01", :"tls-sni-02"], :message=>"%{value} needs to be :\"http-01\", :\"dns-01\", :\"tls-sni-02\""}, allow_nil: true

        # @return [String] File containing the CSR for the new certificate.,Can be created with C(openssl csr ...).,The CSR may contain multiple Subject Alternate Names, but each one will lead to an individual challenge that must be fulfilled for the CSR to be signed.
        attribute :csr
        validates :csr, presence: true, type: String

        # @return [String, nil] The data to validate ongoing challenges.,The value that must be used here will be provided by a previous use of this module.
        attribute :data
        validates :data, type: String

        # @return [String] The destination file for the certificate.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Integer, nil] The number of days the certificate must have left being valid before it will be renewed.
        attribute :remaining_days
        validates :remaining_days, type: Integer
      end
    end
  end
end
