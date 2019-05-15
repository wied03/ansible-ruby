# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # allows you to upload/delete templates in Proxmox VE cluster
      class Proxmox_template < Base
        # @return [String] the host of the Proxmox VE cluster
        attribute :api_host
        validates :api_host, presence: true, type: String

        # @return [String] the user to authenticate with
        attribute :api_user
        validates :api_user, presence: true, type: String

        # @return [String, nil] the password to authenticate with,you can use PROXMOX_PASSWORD environment variable
        attribute :api_password
        validates :api_password, type: String

        # @return [String, nil] enable / disable https certificate verification
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [String] Proxmox VE node, when you will operate with template
        attribute :node
        validates :node, presence: true, type: String

        # @return [String, nil] path to uploaded file,required only for C(state=present)
        attribute :src
        validates :src, type: String

        # @return [String, nil] the template name,required only for states C(absent), C(info)
        attribute :template
        validates :template, type: String

        # @return [:vztmpl, :iso, nil] content type,required only for C(state=present)
        attribute :content_type
        validates :content_type, inclusion: {:in=>[:vztmpl, :iso], :message=>"%{value} needs to be :vztmpl, :iso"}, allow_nil: true

        # @return [String, nil] target storage
        attribute :storage
        validates :storage, type: String

        # @return [Integer, nil] timeout for operations
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] can be used only with C(state=present), exists template will be overwritten
        attribute :force
        validates :force, type: String

        # @return [:present, :absent, nil] Indicate desired state of the template
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
