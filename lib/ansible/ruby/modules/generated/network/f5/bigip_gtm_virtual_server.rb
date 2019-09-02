# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP GTM virtual servers. A GTM server can have many virtual servers associated with it. They are arranged in much the same way that pool members are to pools.
      class Bigip_gtm_virtual_server < Base
        # @return [String, nil] Specifies the name of the virtual server.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Specifies the name of the server that the virtual server is associated with.
        attribute :server_name
        validates :server_name, type: String

        # @return [Object, nil] Specifies the IP Address of the virtual server.,When creating a new GTM virtual server, this parameter is required.
        attribute :address

        # @return [Object, nil] Specifies the service port number for the virtual server or pool member. For example, the HTTP service is typically port 80.,To specify all ports, use an C(*).,When creating a new GTM virtual server, if this parameter is not specified, a default of C(*) will be used.
        attribute :port

        # @return [Object, nil] Specifies the translation IP address for the virtual server.,To unset this parameter, provide an empty string (C("")) as a value.,When creating a new GTM virtual server, if this parameter is not specified, a default of C(::) will be used.
        attribute :translation_address

        # @return [Object, nil] Specifies the translation port number or service name for the virtual server.,To specify all ports, use an C(*).,When creating a new GTM virtual server, if this parameter is not specified, a default of C(*) will be used.
        attribute :translation_port

        # @return [Object, nil] Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.
        attribute :availability_requirements

        # @return [Object, nil] Specifies the health monitors that the system currently uses to monitor this resource.,When C(availability_requirements.type) is C(require), you may only have a single monitor in the C(monitors) list.
        attribute :monitors

        # @return [Object, nil] Specifies the virtual servers on which the current virtual server depends.,If any of the specified servers are unavailable, the current virtual server is also listed as unavailable.
        attribute :virtual_server_dependencies

        # @return [Object, nil] Specifies a link to assign to the server or virtual server.
        attribute :link

        # @return [Object, nil] Specifies resource thresholds or limit requirements at the server level.,When you enable one or more limit settings, the system then uses that data to take servers in and out of service.,You can define limits for any or all of the limit settings. However, when a server does not meet the resource threshold limit requirement, the system marks the entire server as unavailable and directs load-balancing traffic to another resource.,The limit settings available depend on the type of server.
        attribute :limits

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
