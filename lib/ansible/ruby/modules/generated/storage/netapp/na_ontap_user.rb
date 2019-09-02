# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy users.
      class Na_ontap_user < Base
        # @return [:present, :absent, nil] Whether the specified user should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the user to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:console, :http, :ontapi, :rsh, :snmp, :"service-processor", :sp, :ssh, :telnet] Application to grant access to.
        attribute :application
        validates :application, presence: true, expression_inclusion: {:in=>[:console, :http, :ontapi, :rsh, :snmp, :"service-processor", :sp, :ssh, :telnet], :message=>"%{value} needs to be :console, :http, :ontapi, :rsh, :snmp, :\"service-processor\", :sp, :ssh, :telnet"}

        # @return [:community, :password, :publickey, :domain, :nsswitch, :usm] Authentication method for the application.,Not all authentication methods are valid for an application.,Valid authentication methods for each application are as denoted in I(authentication_choices_description).,Password for console application,Password, domain, nsswitch, cert for http application.,Password, domain, nsswitch, cert for ontapi application.,Community for snmp application (when creating SNMPv1 and SNMPv2 users).,The usm and community for snmp application (when creating SNMPv3 users).,Password for sp application.,Password for rsh application.,Password for telnet application.,Password, publickey, domain, nsswitch for ssh application.
        attribute :authentication_method
        validates :authentication_method, presence: true, expression_inclusion: {:in=>[:community, :password, :publickey, :domain, :nsswitch, :usm], :message=>"%{value} needs to be :community, :password, :publickey, :domain, :nsswitch, :usm"}

        # @return [String, nil] Password for the user account.,It is ignored for creating snmp users, but is required for creating non-snmp users.,For an existing user, this value will be used as the new password.
        attribute :set_password
        validates :set_password, type: String

        # @return [String, nil] The name of the role. Required when C(state=present)
        attribute :role_name
        validates :role_name, type: String

        # @return [Symbol, nil] Whether the specified user account is locked.
        attribute :lock_user
        validates :lock_user, type: Symbol

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
