# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages HTTPD related settings on the BIG-IP. These settings are interesting to change when you want to set GUI timeouts and other TMUI related settings.
      class Bigip_device_httpd < Base
        # @return [Object, nil] Specifies, if you have enabled HTTPD access, the IP address or address range for other systems that can communicate with this system.,To specify all addresses, use the value C(all).,IP address can be specified, such as 172.27.1.10.,IP rangees can be specified, such as 172.27.*.* or 172.27.0.0/255.255.0.0.
        attribute :allow

        # @return [String, nil] Sets the BIG-IP authentication realm name.
        attribute :auth_name
        validates :auth_name, type: String

        # @return [Integer, nil] Sets the GUI timeout for automatic logout, in seconds.
        attribute :auth_pam_idle_timeout
        validates :auth_pam_idle_timeout, type: Integer

        # @return [Boolean, nil] Sets the authPamValidateIp setting.
        attribute :auth_pam_validate_ip
        validates :auth_pam_validate_ip, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Sets whether or not the BIG-IP dashboard will timeout.
        attribute :auth_pam_dashboard_timeout

        # @return [Object, nil] Sets the timeout of FastCGI.
        attribute :fast_cgi_timeout

        # @return [Object, nil] Sets whether or not to display the hostname, if possible.
        attribute :hostname_lookup

        # @return [:alert, :crit, :debug, :emerg, :error, :info, :notice, :warn, nil] Sets the minimum httpd log level.
        attribute :log_level
        validates :log_level, inclusion: {:in=>[:alert, :crit, :debug, :emerg, :error, :info, :notice, :warn], :message=>"%{value} needs to be :alert, :crit, :debug, :emerg, :error, :info, :notice, :warn"}, allow_nil: true

        # @return [Object, nil] Sets the maximum number of clients that can connect to the GUI at once.
        attribute :max_clients

        # @return [Object, nil] Whether or not to redirect http requests to the GUI to https.
        attribute :redirect_http_to_https

        # @return [Object, nil] The HTTPS port to listen on.
        attribute :ssl_port

        # @return [Array<String>, String, nil] Specifies the ciphers that the system uses.,The values in the suite are separated by colons (:).,Can be specified in either a string or list form. The list form is the recommended way to provide the cipher suite. See examples for usage.,Use the value C(default) to set the cipher suite to the system default. This value is equivalent to specifying a list of C(ECDHE-RSA-AES128-GCM-SHA256, ECDHE-RSA-AES256-GCM-SHA384,ECDHE-RSA-AES128-SHA,ECDHE-RSA-AES256-SHA, ECDHE-RSA-AES128-SHA256,ECDHE-RSA-AES256-SHA384,ECDHE-ECDSA-AES128-GCM-SHA256, ECDHE-ECDSA-AES256-GCM-SHA384,ECDHE-ECDSA-AES128-SHA,ECDHE-ECDSA-AES256-SHA, ECDHE-ECDSA-AES128-SHA256,ECDHE-ECDSA-AES256-SHA384,AES128-GCM-SHA256, AES256-GCM-SHA384,AES128-SHA,AES256-SHA,AES128-SHA256,AES256-SHA256, ECDHE-RSA-DES-CBC3-SHA,ECDHE-ECDSA-DES-CBC3-SHA,DES-CBC3-SHA).
        attribute :ssl_cipher_suite
        validates :ssl_cipher_suite, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] The list of SSL protocols to accept on the management console.,A space-separated list of tokens in the format accepted by the Apache mod_ssl SSLProtocol directive.,Can be specified in either a string or list form. The list form is the recommended way to provide the cipher suite. See examples for usage.,Use the value C(default) to set the SSL protocols to the system default. This value is equivalent to specifying a list of C(all,-SSLv2,-SSLv3).
        attribute :ssl_protocols
        validates :ssl_protocols, type: TypeGeneric.new(String)
      end
    end
  end
end
