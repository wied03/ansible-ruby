# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure SSLProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_sslprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [String, nil] Ciphers suites represented as defined by U(http://www.openssl.org/docs/apps/ciphers.html).,Default value when not specified in API or module is interpreted by Avi Controller as AES:3DES:RC4.
        attribute :accepted_ciphers
        validates :accepted_ciphers, type: String

        # @return [Array<Hash>, Hash, nil] Set of versions accepted by the server.
        attribute :accepted_versions
        validates :accepted_versions, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] Enum options - tls_ecdhe_ecdsa_with_aes_128_gcm_sha256, tls_ecdhe_ecdsa_with_aes_256_gcm_sha384, tls_ecdhe_rsa_with_aes_128_gcm_sha256,,tls_ecdhe_rsa_with_aes_256_gcm_sha384, tls_ecdhe_ecdsa_with_aes_128_cbc_sha256, tls_ecdhe_ecdsa_with_aes_256_cbc_sha384,,tls_ecdhe_rsa_with_aes_128_cbc_sha256, tls_ecdhe_rsa_with_aes_256_cbc_sha384, tls_rsa_with_aes_128_gcm_sha256, tls_rsa_with_aes_256_gcm_sha384,,tls_rsa_with_aes_128_cbc_sha256, tls_rsa_with_aes_256_cbc_sha256, tls_ecdhe_ecdsa_with_aes_128_cbc_sha, tls_ecdhe_ecdsa_with_aes_256_cbc_sha,,tls_ecdhe_rsa_with_aes_128_cbc_sha, tls_ecdhe_rsa_with_aes_256_cbc_sha, tls_rsa_with_aes_128_cbc_sha, tls_rsa_with_aes_256_cbc_sha,,tls_rsa_with_3des_ede_cbc_sha, tls_rsa_with_rc4_128_sha.
        attribute :cipher_enums
        validates :cipher_enums, type: TypeGeneric.new(String)

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Object, nil] Dh parameters used in ssl.,At this time, it is not configurable and is set to 2048 bits.
        attribute :dhparam

        # @return [Symbol, nil] Enable ssl session re-use.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enable_ssl_session_reuse
        validates :enable_ssl_session_reuse, type: Symbol

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Symbol, nil] Prefer the ssl cipher ordering presented by the client during the ssl handshake over the one specified in the ssl profile.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :prefer_client_cipher_ordering
        validates :prefer_client_cipher_ordering, type: Symbol

        # @return [Symbol, nil] Send 'close notify' alert message for a clean shutdown of the ssl connection.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :send_close_notify
        validates :send_close_notify, type: Symbol

        # @return [Hash, nil] Sslrating settings for sslprofile.
        attribute :ssl_rating
        validates :ssl_rating, type: Hash

        # @return [Object, nil] The amount of time before an ssl session expires.,Default value when not specified in API or module is interpreted by Avi Controller as 86400.,Units(SEC).
        attribute :ssl_session_timeout

        # @return [Object, nil] List of tag.
        attribute :tags

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [Object, nil] Ssl profile type.,Enum options - SSL_PROFILE_TYPE_APPLICATION, SSL_PROFILE_TYPE_SYSTEM.,Field introduced in 17.2.8.,Default value when not specified in API or module is interpreted by Avi Controller as SSL_PROFILE_TYPE_APPLICATION.
        attribute :type

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end
