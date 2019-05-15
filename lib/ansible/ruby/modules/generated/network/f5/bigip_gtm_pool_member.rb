# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages a variety of settings on GTM pool members. The settings that can be adjusted with this module are much more broad that what can be done in the C(bigip_gtm_pool) module. The pool module is intended to allow you to adjust the member order in the pool, not the various settings of the members. The C(bigip_gtm_pool_member) module should be used to adjust all of the other settings.
      class Bigip_gtm_pool_member < Base
        # @return [Object] Specifies the name of the GTM virtual server which is assigned to the specified C(server).
        attribute :virtual_server
        validates :virtual_server, presence: true

        # @return [Object] Specifies the GTM server which contains the C(virtual_server).
        attribute :server_name
        validates :server_name, presence: true

        # @return [:a, :aaaa, :cname, :mx, :naptr, :srv] The type of GTM pool that the member is in.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:a, :aaaa, :cname, :mx, :naptr, :srv], :message=>"%{value} needs to be :a, :aaaa, :cname, :mx, :naptr, :srv"}

        # @return [Object] Name of the GTM pool.
        attribute :pool
        validates :pool, presence: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] Specifies the order in which the member will appear in the pool.,The system uses this number with load balancing methods that involve prioritizing pool members, such as the Ratio load balancing method.,When creating a new member using this module, if the C(member_order) parameter is not specified, it will default to C(0) (first member in the pool).
        attribute :member_order

        # @return [Object, nil] Specifies the monitor assigned to this pool member.,Pool members only support a single monitor.,If the C(port) of the C(gtm_virtual_server) is C(*), the accepted values of this parameter will be affected.,When creating a new pool member, if this parameter is not specified, the default of C(default) will be used.,To remove the monitor from the pool member, use the value C(none).,For pool members created on different partitions, you can also specify the full path to the Common monitor. For example, C(/Common/tcp).
        attribute :monitor

        # @return [Object, nil] Specifies the weight of the pool member for load balancing purposes.
        attribute :ratio

        # @return [Object, nil] The description of the pool member.
        attribute :description

        # @return [Object, nil] Specifies resource thresholds or limit requirements at the pool member level.,When you enable one or more limit settings, the system then uses that data to take members in and out of service.,You can define limits for any or all of the limit settings. However, when a member does not meet the resource threshold limit requirement, the system marks the member as unavailable and directs load-balancing traffic to another resource.
        attribute :limits

        # @return [:present, :absent, :enabled, :disabled, nil] Pool member state. When C(present), ensures that the pool member is created and enabled. When C(absent), ensures that the pool member is removed from the system. When C(enabled) or C(disabled), ensures that the pool member is enabled or disabled (respectively) on the remote device.,It is recommended that you use the C(members) parameter of the C(bigip_gtm_pool) module when adding and removing members and it provides an easier way of specifying order. If this is not possible, then the C(state) parameter here should be used.,Remember that the order of the members will be affected if you add or remove them using this method. To some extent, this can be controlled using the C(member_order) parameter.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
