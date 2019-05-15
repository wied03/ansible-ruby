# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the system authentication configuration. This module can assist in configuring a number of different system authentication types. Note that this module can not be used to configure APM authentication types.
      class Bigip_device_auth < Base
        # @return [:tacacs, :local, nil] The authentication type to manage with this module.,Take special note that the parameters supported by this module will vary depending on the C(type) that you are configuring.,This module only supports a subset, at this time, of the total available auth types.
        attribute :type
        validates :type, inclusion: {:in=>[:tacacs, :local], :message=>"%{value} needs to be :tacacs, :local"}, allow_nil: true

        # @return [Array<String>, String, nil] Specifies a list of the IPv4 addresses for servers using the Terminal Access Controller Access System (TACACS)+ protocol with which the system communicates to obtain authorization data.,For each address, an alternate TCP port number may be optionally specified by specifying the C(port) key.,If no port number is specified, the default port C(49163) is used.,This parameter is supported by the C(tacacs) type.
        attribute :servers
        validates :servers, type: TypeGeneric.new(String, Hash)

        # @return [String, nil] Secret key used to encrypt and decrypt packets sent or received from the server.,B(Do not) use the pound/hash sign in the secret for TACACS+ servers.,When configuring TACACS+ auth for the first time, this value is required.
        attribute :secret
        validates :secret, type: String

        # @return [:slip, :ppp, :arap, :shell, :"tty-daemon", :connection, :system, :firewall, nil] Specifies the name of the service that the user is requesting to be authorized to use.,Identifying what the user is asking to be authorized for, enables the TACACS+ server to behave differently for different types of authorization requests.,When configuring this form of system authentication, this setting is required.,Note that the majority of TACACS+ implementations are of service type C(ppp), so try that first.
        attribute :service_name
        validates :service_name, inclusion: {:in=>[:slip, :ppp, :arap, :shell, :"tty-daemon", :connection, :system, :firewall], :message=>"%{value} needs to be :slip, :ppp, :arap, :shell, :\"tty-daemon\", :connection, :system, :firewall"}, allow_nil: true

        # @return [:lcp, :ip, :ipx, :atalk, :vines, :lat, :xremote, :tn3270, :telnet, :rlogin, :pad, :vpdn, :ftp, :http, :deccp, :osicp, :unknown, nil] Specifies the protocol associated with the value specified in C(service_name), which is a subset of the associated service being used for client authorization or system accounting.,Note that the majority of TACACS+ implementations are of protocol type C(ip), so try that first.
        attribute :protocol_name
        validates :protocol_name, inclusion: {:in=>[:lcp, :ip, :ipx, :atalk, :vines, :lat, :xremote, :tn3270, :telnet, :rlogin, :pad, :vpdn, :ftp, :http, :deccp, :osicp, :unknown], :message=>"%{value} needs to be :lcp, :ip, :ipx, :atalk, :vines, :lat, :xremote, :tn3270, :telnet, :rlogin, :pad, :vpdn, :ftp, :http, :deccp, :osicp, :unknown"}, allow_nil: true

        # @return [:"use-first-server", :"use-all-servers", nil] Specifies the process the system employs when sending authentication requests.,When C(use-first-server), specifies that the system sends authentication attempts to only the first server in the list.,When C(use-all-servers), specifies that the system sends an authentication request to each server until authentication succeeds, or until the system has sent a request to all servers in the list.,This parameter is supported by the C(tacacs) type.
        attribute :authentication
        validates :authentication, inclusion: {:in=>[:"use-first-server", :"use-all-servers"], :message=>"%{value} needs to be :\"use-first-server\", :\"use-all-servers\""}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not this auth source is put in use on the system.
        attribute :use_for_auth
        validates :use_for_auth, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:absent, :present, nil] The state of the authentication configuration on the system.,When C(present), guarantees that the system is configured for the specified C(type).,When C(absent), sets the system auth source back to C(local).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:always, :on_create, nil] C(always) will allow to update secrets if the user chooses to do so.,C(on_create) will only set the secret when a C(use_auth_source) is C(yes) and TACACS+ is not currently the auth source.
        attribute :update_secret
        validates :update_secret, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end
