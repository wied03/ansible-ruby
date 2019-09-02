# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to managed Chocolatey sources configured on the client.
      # Requires Chocolatey to be already installed on the remote host.
      class Win_chocolatey_source < Base
        # @return [Symbol, nil] Makes the source visible to Administrators only.,Requires Chocolatey >= 0.10.8.,When creating a new source, this defaults to C(False).
        attribute :admin_only
        validates :admin_only, type: Symbol

        # @return [Symbol, nil] Allow the source to be used with self-service,Requires Chocolatey >= 0.10.4.,When creating a new source, this defaults to C(False).
        attribute :allow_self_service
        validates :allow_self_service, type: Symbol

        # @return [Symbol, nil] Bypass the proxy when using this source.,Requires Chocolatey >= 0.10.4.,When creating a new source, this defaults to C(False).
        attribute :bypass_proxy
        validates :bypass_proxy, type: Symbol

        # @return [Object, nil] The path to a .pfx file to use for X509 authenticated feeds.,Requires Chocolatey >= 0.9.10.
        attribute :certificate

        # @return [Object, nil] The password for I(certificate) if required.,Requires Chocolatey >= 0.9.10.
        attribute :certificate_password

        # @return [String] The name of the source to configure.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] The priority order of this source compared to other sources, lower is better.,All priorities above C(0) will be evaluated first, then zero-based values will be evaluated in config file order.,Requires Chocolatey >= 0.9.9.9.,When creating a new source, this defaults to C(0).
        attribute :priority
        validates :priority, type: Integer

        # @return [String, nil] The file/folder/url of the source.,Required when I(state) is C(present) or C(disabled).
        attribute :source
        validates :source, type: String

        # @return [String, nil] The username used to access I(source).
        attribute :source_username
        validates :source_username, type: String

        # @return [String, nil] The password for I(source_username).,Required if I(source_username) is set.
        attribute :source_password
        validates :source_password, type: String

        # @return [:absent, :disabled, :present, nil] When C(absent), will remove the source.,When C(disabled), will ensure the source exists but is disabled.,When C(present), will ensure the source exists and is enabled.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :disabled, :present], :message=>"%{value} needs to be :absent, :disabled, :present"}, allow_nil: true

        # @return [:always, :on_create, nil] When C(always), the module will always set the password and report a change if I(certificate_password) or I(source_password) is set.,When C(on_create), the module will only set the password if the source is being created.
        attribute :update_password
        validates :update_password, expression_inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end
