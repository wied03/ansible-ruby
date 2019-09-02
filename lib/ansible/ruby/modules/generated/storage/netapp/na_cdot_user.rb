# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy users.
      class Na_cdot_user < Base
        # @return [:present, :absent] Whether the specified user should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the user to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:console, :http, :ontapi, :rsh, :snmp, :sp, :ssh, :telnet] Applications to grant access to.
        attribute :application
        validates :application, presence: true, expression_inclusion: {:in=>[:console, :http, :ontapi, :rsh, :snmp, :sp, :ssh, :telnet], :message=>"%{value} needs to be :console, :http, :ontapi, :rsh, :snmp, :sp, :ssh, :telnet"}

        # @return [:community, :password, :publickey, :domain, :nsswitch, :usm] Authentication method for the application.,Not all authentication methods are valid for an application.,Valid authentication methods for each application are as denoted in I(authentication_choices_description).,password for console application,password, domain, nsswitch, cert for http application.,password, domain, nsswitch, cert for ontapi application.,community for snmp application (when creating SNMPv1 and SNMPv2 users).,usm and community for snmp application (when creating SNMPv3 users).,password for sp application.,password for rsh application.,password for telnet application.,password, publickey, domain, nsswitch for ssh application.
        attribute :authentication_method
        validates :authentication_method, presence: true, expression_inclusion: {:in=>[:community, :password, :publickey, :domain, :nsswitch, :usm], :message=>"%{value} needs to be :community, :password, :publickey, :domain, :nsswitch, :usm"}

        # @return [String, nil] Password for the user account.,It is ignored for creating snmp users, but is required for creating non-snmp users.,For an existing user, this value will be used as the new password.
        attribute :set_password
        validates :set_password, type: String

        # @return [String, nil] The name of the role. Required when C(state=present)
        attribute :role_name
        validates :role_name, type: String

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
