# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to import/export and remove certificates and keys from the local certificate store.
      # This module is not used to create certificates and will only manage existing certs as a file or in the store.
      # It can be used to import PEM, DER, P7B, PKCS12 (PFX) certificates and export PEM, DER and PKCS12 certificates.
      class Win_certificate_store < Base
        # @return [:absent, :exported, :present, nil] If C(present), will ensure that the certificate at I(path) is imported into the certificate store specified.,If C(absent), will ensure that the certificate specified by I(thumbprint) or the thumbprint of the cert at I(path) is removed from the store specified.,If C(exported), will ensure the file at I(path) is a certificate specified by I(thumbprint).,When exporting a certificate, if I(path) is a directory then the module will fail, otherwise the file will be replaced if needed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :exported, :present], :message=>"%{value} needs to be :absent, :exported, :present"}, allow_nil: true

        # @return [String, nil] The path to a certificate file.,This is required when I(state) is C(present) or C(exported).,When I(state) is C(absent) and I(thumbprint) is not specified, the thumbprint is derived from the certificate at this path.
        attribute :path
        validates :path, type: String

        # @return [String, nil] The thumbprint as a hex string to either export or remove.,See the examples for how to specify the thumbprint.
        attribute :thumbprint
        validates :thumbprint, type: String

        # @return [:AddressBook, :AuthRoot, :CertificateAuthority, :Disallowed, :My, :Root, :TrustedPeople, :TrustedPublisher, nil] The store name to use when importing a certificate or searching for a certificate.,C(AddressBook): The X.509 certificate store for other users,C(AuthRoot): The X.509 certificate store for third-party certificate authorities (CAs),C(CertificateAuthority): The X.509 certificate store for intermediate certificate authorities (CAs),C(Disallowed): The X.509 certificate store for revoked certificates,C(My): The X.509 certificate store for personal certificates,C(Root): The X.509 certificate store for trusted root certificate authorities (CAs),C(TrustedPeople): The X.509 certificate store for directly trusted people and resources,C(TrustedPublisher): The X.509 certificate store for directly trusted publishers
        attribute :store_name
        validates :store_name, inclusion: {:in=>[:AddressBook, :AuthRoot, :CertificateAuthority, :Disallowed, :My, :Root, :TrustedPeople, :TrustedPublisher], :message=>"%{value} needs to be :AddressBook, :AuthRoot, :CertificateAuthority, :Disallowed, :My, :Root, :TrustedPeople, :TrustedPublisher"}, allow_nil: true

        # @return [:CurrentUser, :LocalMachine, nil] The store location to use when importing a certificate or searching for a certificate.
        attribute :store_location
        validates :store_location, inclusion: {:in=>[:CurrentUser, :LocalMachine], :message=>"%{value} needs to be :CurrentUser, :LocalMachine"}, allow_nil: true

        # @return [String, nil] The password of the pkcs12 certificate key.,This is used when reading a pkcs12 certificate file or the password to set when C(state=exported) and C(file_type=pkcs12).,If the pkcs12 file has no password set or no password should be set on the exported file, do not set this option.
        attribute :password
        validates :password, type: String

        # @return [:yes, :no, nil] Whether to allow the private key to be exported.,If C(no), then this module and other process will only be able to export the certificate and the private key cannot be exported.,Used when C(state=present) only.
        attribute :key_exportable
        validates :key_exportable, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:default, :machine, :user, nil] Specifies where Windows will store the private key when it is imported.,When set to C(default), the default option as set by Windows is used.,When set to C(machine), the key is stored in a path accessible by various users.,When set to C(user), the key is stored in a path only accessible by the current user.,Used when C(state=present) only and cannot be changed once imported.,See U(https://msdn.microsoft.com/en-us/library/system.security.cryptography.x509certificates.x509keystorageflags.aspx) for more details.
        attribute :key_storage
        validates :key_storage, inclusion: {:in=>[:default, :machine, :user], :message=>"%{value} needs to be :default, :machine, :user"}, allow_nil: true

        # @return [:der, :pem, :pkcs12, nil] The file type to export the certificate as when C(state=exported).,C(der) is a binary ASN.1 encoded file.,C(pem) is a base64 encoded file of a der file in the OpenSSL form.,C(pkcs12) (also known as pfx) is a binary container that contains both the certificate and private key unlike the other options.,When C(pkcs12) is set and the private key is not exportable or accessible by the current user, it will throw an exception.
        attribute :file_type
        validates :file_type, inclusion: {:in=>[:der, :pem, :pkcs12], :message=>"%{value} needs to be :der, :pem, :pkcs12"}, allow_nil: true
      end
    end
  end
end
