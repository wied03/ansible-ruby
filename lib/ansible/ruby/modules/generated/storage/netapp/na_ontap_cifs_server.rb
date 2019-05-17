# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creating / deleting and modifying the CIFS server.
      class Na_ontap_cifs_server < Base
        # @return [:present, :absent, nil] Whether the specified cifs_server should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:stopped, :started, nil] CIFS Server Administrative Status.
        attribute :service_state
        validates :service_state, inclusion: {:in=>[:stopped, :started], :message=>"%{value} needs to be :stopped, :started"}, allow_nil: true

        # @return [String] Specifies the cifs_server name.
        attribute :cifs_server_name
        validates :cifs_server_name, presence: true, type: String

        # @return [Object, nil] Specifies the cifs server admin username.
        attribute :admin_user_name

        # @return [Object, nil] Specifies the cifs server admin password.
        attribute :admin_password

        # @return [Object, nil] The Fully Qualified Domain Name of the Windows Active Directory this CIFS server belongs to.
        attribute :domain

        # @return [Object, nil] The NetBIOS name of the domain or workgroup this CIFS server belongs to.
        attribute :workgroup

        # @return [Object, nil] The Organizational Unit (OU) within the Windows Active Directory this CIFS server belongs to.
        attribute :ou

        # @return [Symbol, nil] If this is set and a machine account with the same name as specified in 'cifs_server_name' exists in the Active Directory, it will be overwritten and reused.
        attribute :force
        validates :force, type: Symbol

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
