# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module gathers facts for a specific system using its HP iLO interface. These facts include hardware and network related information useful for provisioning (e.g. macaddress, uuid).
      # This module requires the hpilo python module.
      class Hpilo_facts < Base
        # @return [String] The HP iLO hostname/address that is linked to the physical system.
        attribute :host
        validates :host, presence: true, type: String

        # @return [String, nil] The login name to authenticate to the HP iLO interface.
        attribute :login
        validates :login, type: String

        # @return [String, nil] The password to authenticate to the HP iLO interface.
        attribute :password
        validates :password, type: String

        # @return [:SSLv3, :SSLv23, :TLSv1, :TLSv1_1, :TLSv1_2, nil] Change the ssl_version used.
        attribute :ssl_version
        validates :ssl_version, inclusion: {:in=>[:SSLv3, :SSLv23, :TLSv1, :TLSv1_1, :TLSv1_2], :message=>"%{value} needs to be :SSLv3, :SSLv23, :TLSv1, :TLSv1_1, :TLSv1_2"}, allow_nil: true
      end
    end
  end
end
