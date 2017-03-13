# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP user configuration.
      class Nxos_snmp_user < Base
        # @return [String] Name of the user.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Group to which the user will belong to.
        attribute :group
        validates :group, presence: true, type: String

        # @return [:md5, :sha, nil] Auth parameters for the user.
        attribute :auth
        validates :auth, inclusion: {:in=>[:md5, :sha], :message=>"%{value} needs to be :md5, :sha"}, allow_nil: true

        # @return [String, nil] Auth password when using md5 or sha.
        attribute :pwd
        validates :pwd, type: String

        # @return [Object, nil] Privacy password for the user.
        attribute :privacy

        # @return [:true, :false, nil] Enables AES-128 bit encryption when using privacy password.
        attribute :encrypt
        validates :encrypt, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
