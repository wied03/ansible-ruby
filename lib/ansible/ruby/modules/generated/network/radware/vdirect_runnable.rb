# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Runs configuration templates, creates workflows and runs workflow actions in Radware vDirect server.
      class Vdirect_runnable < Base
        # @return [String] Primary vDirect server IP address, may be set as C(VDIRECT_IP) environment variable.
        attribute :vdirect_ip
        validates :vdirect_ip, presence: true, type: String

        # @return [String] vDirect server username, may be set as C(VDIRECT_USER) environment variable.
        attribute :vdirect_user
        validates :vdirect_user, presence: true, type: String

        # @return [String] vDirect server password, may be set as C(VDIRECT_PASSWORD) environment variable.
        attribute :vdirect_password
        validates :vdirect_password, presence: true, type: String

        # @return [Object, nil] Secondary vDirect server IP address, may be set as C(VDIRECT_SECONDARY_IP) environment variable.
        attribute :vdirect_secondary_ip

        # @return [String, nil] Wait for async operation to complete, may be set as C(VDIRECT_WAIT) environment variable.
        attribute :vdirect_wait
        validates :vdirect_wait, type: String

        # @return [Integer, nil] vDirect server HTTPS port number, may be set as C(VDIRECT_HTTPS_PORT) environment variable.
        attribute :vdirect_https_port
        validates :vdirect_https_port, type: Integer

        # @return [Integer, nil] vDirect server HTTP port number, may be set as C(VDIRECT_HTTP_PORT) environment variable.
        attribute :vdirect_http_port
        validates :vdirect_http_port, type: Integer

        # @return [Integer, nil] Amount of time to wait for async operation completion [seconds],,may be set as C(VDIRECT_TIMEOUT) environment variable.
        attribute :vdirect_timeout
        validates :vdirect_timeout, type: Integer

        # @return [String, nil] If C(no), an HTTP connection will be used instead of the default HTTPS connection,,may be set as C(VDIRECT_HTTPS) or C(VDIRECT_USE_SSL) environment variable.
        attribute :vdirect_use_ssl
        validates :vdirect_use_ssl, type: String

        # @return [String, nil] If C(no), SSL certificates will not be validated,,may be set as C(VDIRECT_VALIDATE_CERTS) or C(VDIRECT_VERIFY) environment variable.,This should only set to C(no) used on personally controlled sites using self-signed certificates.
        attribute :vdirect_validate_certs
        validates :vdirect_validate_certs, type: String

        # @return [:ConfigurationTemplate, :Workflow, :WorkflowTemplate] vDirect runnable type.
        attribute :runnable_type
        validates :runnable_type, presence: true, inclusion: {:in=>[:ConfigurationTemplate, :Workflow, :WorkflowTemplate], :message=>"%{value} needs to be :ConfigurationTemplate, :Workflow, :WorkflowTemplate"}

        # @return [String] vDirect runnable name to run.,May be configuration template name, workflow template name or workflow instance name.
        attribute :runnable_name
        validates :runnable_name, presence: true, type: String

        # @return [Object, nil] Workflow action name to run.,Required if I(runnable_type=Workflow).
        attribute :action_name

        # @return [Hash, nil] Action parameters dictionary. In case of C(ConfigurationTemplate) runnable type,,the device connection details should always be passed as a parameter.
        attribute :parameters
        validates :parameters, type: Hash
      end
    end
  end
end
