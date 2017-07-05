# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure PKIProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_pkiprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] List of certificate authorities (root and intermediate) trusted that is used for certificate validation.
        attribute :ca_certs

        # @return [Object, nil] Creator name.
        attribute :created_by

        # @return [Object, nil] When enabled, avi will verify via crl checks that certificates in the trust chain have not been revoked.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :crl_check

        # @return [Object, nil] Certificate revocation lists.
        attribute :crls

        # @return [Object, nil] When enabled, avi will not trust intermediate and root certs presented by a client.,Instead, only the chain certs configured in the certificate authority section will be used to verify trust of the client's cert.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :ignore_peer_chain

        # @return [String] Name of the pki profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid

        # @return [Object, nil] When enabled, avi will only validate the revocation status of the leaf certificate using crl.,To enable validation for the entire chain, disable this option and provide all the relevant crls.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :validate_only_leaf_crl
      end
    end
  end
end
