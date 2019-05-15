# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP GTM wide ip.
      class Bigip_gtm_wide_ip < Base
        # @return [:"round-robin", :ratio, :topology, :"global-availability", :global_availability, :round_robin] Specifies the load balancing method used to select a pool in this wide IP. This setting is relevant only when multiple pools are configured for a wide IP.,The C(round_robin) value is deprecated and will be removed in Ansible 2.9.,The C(global_availability) value is deprecated and will be removed in Ansible 2.9.
        attribute :pool_lb_method
        validates :pool_lb_method, presence: true, inclusion: {:in=>[:"round-robin", :ratio, :topology, :"global-availability", :global_availability, :round_robin], :message=>"%{value} needs to be :\"round-robin\", :ratio, :topology, :\"global-availability\", :global_availability, :round_robin"}

        # @return [String] Wide IP name. This name must be formatted as a fully qualified domain name (FQDN). You can also use the alias C(wide_ip) but this is deprecated and will be removed in a future Ansible version.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:a, :aaaa, :cname, :mx, :naptr, :srv, nil] Specifies the type of wide IP. GTM wide IPs need to be keyed by query type in addition to name, since pool members need different attributes depending on the response RDATA they are meant to supply. This value is required if you are using BIG-IP versions >= 12.0.0.
        attribute :type
        validates :type, inclusion: {:in=>[:a, :aaaa, :cname, :mx, :naptr, :srv], :message=>"%{value} needs to be :a, :aaaa, :cname, :mx, :naptr, :srv"}, allow_nil: true

        # @return [:present, :absent, :disabled, :enabled, nil] When C(present) or C(enabled), ensures that the Wide IP exists and is enabled.,When C(absent), ensures that the Wide IP has been removed.,When C(disabled), ensures that the Wide IP exists and is disabled.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :disabled, :enabled], :message=>"%{value} needs to be :present, :absent, :disabled, :enabled"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Array<Hash>, Hash, nil] The pools that you want associated with the Wide IP.,If C(ratio) is not provided when creating a new Wide IP, it will default to 1.
        attribute :pools
        validates :pools, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String, nil] List of rules to be applied.,If you want to remove all existing iRules, specify a single empty value; C(""). See the documentation for an example.
        attribute :irules
        validates :irules, type: TypeGeneric.new(String)

        # @return [Object, nil] Specifies alternate domain names for the web site content you are load balancing.,You can use the same wildcard characters for aliases as you can for actual wide IP names.
        attribute :aliases
      end
    end
  end
end
