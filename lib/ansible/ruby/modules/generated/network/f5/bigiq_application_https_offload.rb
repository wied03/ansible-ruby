# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BIG-IQ applications used for load balancing an HTTPS application on port 443 with SSL offloading on BIG-IP.
      class Bigiq_application_https_offload < Base
        # @return [String] Name of the new application.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the application.
        attribute :description
        validates :description, type: String

        # @return [Array<Hash>, Hash, nil] A list of servers that the application is hosted on.,If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.,When creating a new application, at least one server is required.
        attribute :servers
        validates :servers, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] Settings to configure the virtual which will receive the inbound connection.,This virtual will be used to host the HTTPS endpoint of the application.,Traffic destined to the C(redirect_virtual) will be offloaded to this parameter to ensure that proper redirection from insecure, to secure, occurs.
        attribute :inbound_virtual
        validates :inbound_virtual, type: Hash

        # @return [Hash, nil] Settings to configure the virtual which will receive the connection to be redirected.,This virtual will be used to host the HTTP endpoint of the application.,Traffic destined to this parameter will be offloaded to the C(inbound_virtual) parameter to ensure that proper redirection from insecure, to secure, occurs.
        attribute :redirect_virtual
        validates :redirect_virtual, type: Hash

        # @return [Object, nil] Specifies the SSL profile for managing client-side SSL traffic.
        attribute :client_ssl_profile

        # @return [String, nil] Specifies the name of service environment or the hostname of the BIG-IP that the application will be deployed to.,When creating a new application, this parameter is required.
        attribute :service_environment
        validates :service_environment, type: String

        # @return [Symbol, nil] Collects statistics of the BIG-IP that the application is deployed to.,This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.
        attribute :add_analytics
        validates :add_analytics, type: Symbol

        # @return [:absent, :present, nil] The state of the resource on the system.,When C(present), guarantees that the resource exists with the provided attributes.,When C(absent), removes the resource from the system.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Boolean, nil] If the module should wait for the application to be created, deleted or updated.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
