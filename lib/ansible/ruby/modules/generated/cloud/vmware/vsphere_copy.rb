# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Upload files to a vCenter datastore
      class Vsphere_copy < Base
        # @return [String] The vCenter server on which the datastore is available.
        attribute :host
        validates :host, presence: true, type: String

        # @return [String] The login name to authenticate on the vCenter server.
        attribute :login
        validates :login, presence: true, type: String

        # @return [String] The password to authenticate on the vCenter server.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] The file to push to vCenter
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] The datacenter on the vCenter server that holds the datastore.
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String] The datastore on the vCenter server to push files to.
        attribute :datastore
        validates :datastore, presence: true, type: String

        # @return [String] The file to push to the datastore on the vCenter server.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
