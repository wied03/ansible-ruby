# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete vaults and secret vaults.
      # KRA service should be enabled to use this module.
      class Ipa_vault < Base
        # @return [Object] Vault name.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [String, nil] Description.
        attribute :description
        validates :description, type: String

        # @return [:standard, :symmetric, :asymmetric] Vault types are based on security level.
        attribute :ipavaulttype
        validates :ipavaulttype, presence: true, inclusion: {:in=>[:standard, :symmetric, :asymmetric], :message=>"%{value} needs to be :standard, :symmetric, :asymmetric"}

        # @return [Object, nil] Public key.
        attribute :ipavaultpublickey

        # @return [Object, nil] Vault Salt.
        attribute :ipavaultsalt

        # @return [Object, nil] Any user can own one or more user vaults.,Mutually exclusive with service.
        attribute :username

        # @return [Object, nil] Any service can own one or more service vaults.,Mutually exclusive with user.
        attribute :service

        # @return [:present, :absent, nil] State to ensure.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:True, :False, nil] Force replace the existant vault on IPA server.
        attribute :replace
        validates :replace, inclusion: {:in=>[:True, :False], :message=>"%{value} needs to be :True, :False"}, allow_nil: true

        # @return [Boolean, nil] Validate IPA server certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
