# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower credential type. See U(https://www.ansible.com/tower) for an overview.
      class Tower_credential_type < Base
        # @return [String] The name of the credential type.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description of the credential type to give more detail about it.
        attribute :description
        validates :description, type: String

        # @return [:ssh, :vault, :net, :scm, :cloud, :insights, nil] The type of credential type being added. Note that only cloud and net can be used for creating credential types. Refer to the Ansible for more information.
        attribute :kind
        validates :kind, inclusion: {:in=>[:ssh, :vault, :net, :scm, :cloud, :insights], :message=>"%{value} needs to be :ssh, :vault, :net, :scm, :cloud, :insights"}, allow_nil: true

        # @return [String, nil] Enter inputs using either JSON or YAML syntax. Refer to the Ansible Tower documentation for example syntax.
        attribute :inputs
        validates :inputs, type: String

        # @return [Hash, nil] Enter injectors using either JSON or YAML syntax. Refer to the Ansible Tower documentation for example syntax.
        attribute :injectors
        validates :injectors, type: Hash

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Tower option to avoid certificates check.
        attribute :tower_verify_ssl
        validates :tower_verify_ssl, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
