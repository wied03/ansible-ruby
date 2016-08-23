# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Proxmox_template < Base
        # @return [String] the host of the Proxmox VE cluster
        attribute :api_host
        validates :api_host, presence: true, type: String

        # @return [String] the user to authenticate with
        attribute :api_user
        validates :api_user, presence: true, type: String

        # @return [String] the password to authenticate with,you can use PROXMOX_PASSWORD environment variable
        attribute :api_password
        validates :api_password, type: String

        # @return [Object] enable / disable https certificate verification
        attribute :validate_certs

        # @return [String] Proxmox VE node, when you will operate with template
        attribute :node
        validates :node, presence: true, type: String

        # @return [String] path to uploaded file,required only for C(state=present)
        attribute :src
        validates :src, type: String

        # @return [String] the template name,required only for states C(absent), C(info)
        attribute :template
        validates :template, type: String

        # @return [String] content type,required only for C(state=present)
        attribute :content_type
        validates :content_type, inclusion: {:in=>[:vztmpl, :iso], :message=>"%{value} needs to be :vztmpl, :iso"}, allow_nil: true

        # @return [String] target storage
        attribute :storage
        validates :storage, type: String

        # @return [Fixnum] timeout for operations
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [String] can be used only with C(state=present), exists template will be overwritten
        attribute :force
        validates :force, type: String

        # @return [String] Indicate desired state of the template
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
