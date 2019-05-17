# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, deletes or modifys NFS client(s) for existing exports on Infinibox.
      class Infini_export_client < Base
        # @return [String] Client IP or Range. Ranges can be defined as follows 192.168.0.1-192.168.0.254.
        attribute :client
        validates :client, presence: true, type: String

        # @return [:present, :absent, nil] Creates/Modifies client when present and removes when absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:RW, :RO, nil] Read Write or Read Only Access.
        attribute :access_mode
        validates :access_mode, inclusion: {:in=>[:RW, :RO], :message=>"%{value} needs to be :RW, :RO"}, allow_nil: true

        # @return [Symbol, nil] Don't squash root user to anonymous. Will be set to "no" on creation if not specified explicitly.
        attribute :no_root_squash
        validates :no_root_squash, type: Symbol

        # @return [String] Name of the export.
        attribute :export
        validates :export, presence: true, type: String
      end
    end
  end
end
