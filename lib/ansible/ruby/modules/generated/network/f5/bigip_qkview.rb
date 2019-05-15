# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages creating and downloading qkviews from a BIG-IP. Various options can be provided when creating qkviews. The qkview is important when dealing with F5 support. It may be required that you upload this qkview to the supported channels during resolution of an SRs that you may have opened.
      class Bigip_qkview < Base
        # @return [String, nil] Name of the qkview to create on the remote BIG-IP.
        attribute :filename
        validates :filename, type: String

        # @return [String] Destination on your local filesystem when you want to save the qkview.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Boolean, nil] When C(True), includes the ASM request log data. When C(False), excludes the ASM request log data.
        attribute :asm_request_log
        validates :asm_request_log, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Max file size, in bytes, of the qkview to create. By default, no max file size is specified.
        attribute :max_file_size
        validates :max_file_size, type: Integer

        # @return [Boolean, nil] Include complete information in the qkview.
        attribute :complete_information
        validates :complete_information, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Exclude core files from the qkview.
        attribute :exclude_core
        validates :exclude_core, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:all, :audit, :secure, :bash_history, nil] Exclude various file from the qkview.
        attribute :exclude
        validates :exclude, inclusion: {:in=>[:all, :audit, :secure, :bash_history], :message=>"%{value} needs to be :all, :audit, :secure, :bash_history"}, allow_nil: true

        # @return [Boolean, nil] If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
