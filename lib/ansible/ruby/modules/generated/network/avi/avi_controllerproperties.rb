# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure ControllerProperties object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_controllerproperties < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, expression_inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, expression_inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Symbol, nil] Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :allow_ip_forwarding
        validates :allow_ip_forwarding, type: Symbol

        # @return [Symbol, nil] Allow unauthenticated access for special apis.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :allow_unauthenticated_apis
        validates :allow_unauthenticated_apis, type: Symbol

        # @return [Symbol, nil] Boolean flag to set allow_unauthenticated_nodes.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :allow_unauthenticated_nodes
        validates :allow_unauthenticated_nodes, type: Symbol

        # @return [Object, nil] Allowed values are 0-1440.,Default value when not specified in API or module is interpreted by Avi Controller as 15.,Units(MIN).
        attribute :api_idle_timeout

        # @return [Symbol, nil] Export configuration in appviewx compatibility mode.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :appviewx_compat_mode
        validates :appviewx_compat_mode, type: Symbol

        # @return [Object, nil] Number of attach_ip_retry_interval.,Default value when not specified in API or module is interpreted by Avi Controller as 360.,Units(SEC).
        attribute :attach_ip_retry_interval

        # @return [Object, nil] Number of attach_ip_retry_limit.,Default value when not specified in API or module is interpreted by Avi Controller as 4.
        attribute :attach_ip_retry_limit

        # @return [Symbol, nil] Use ansible for se creation in baremetal.,Field introduced in 17.2.2.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :bm_use_ansible
        validates :bm_use_ansible, type: Symbol

        # @return [Object, nil] Number of cluster_ip_gratuitous_arp_period.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(MIN).
        attribute :cluster_ip_gratuitous_arp_period

        # @return [Object, nil] Number of crashed_se_reboot.,Default value when not specified in API or module is interpreted by Avi Controller as 900.,Units(SEC).
        attribute :crashed_se_reboot

        # @return [Object, nil] Number of dead_se_detection_timer.,Default value when not specified in API or module is interpreted by Avi Controller as 360.,Units(SEC).
        attribute :dead_se_detection_timer

        # @return [Object, nil] Number of dns_refresh_period.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(MIN).
        attribute :dns_refresh_period

        # @return [Object, nil] Number of dummy.
        attribute :dummy

        # @return [Symbol, nil] Enable/disable memory balancer.,Field introduced in 17.2.8.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :enable_memory_balancer
        validates :enable_memory_balancer, type: Symbol

        # @return [Object, nil] Number of fatal_error_lease_time.,Default value when not specified in API or module is interpreted by Avi Controller as 120.,Units(SEC).
        attribute :fatal_error_lease_time

        # @return [Object, nil] Number of max_dead_se_in_grp.,Default value when not specified in API or module is interpreted by Avi Controller as 1.
        attribute :max_dead_se_in_grp

        # @return [Object, nil] Maximum number of pcap files stored per tenant.,Default value when not specified in API or module is interpreted by Avi Controller as 4.
        attribute :max_pcap_per_tenant

        # @return [Object, nil] Maximum number of consecutive attach ip failures that halts vs placement.,Field introduced in 17.2.2.,Default value when not specified in API or module is interpreted by Avi Controller as 3.
        attribute :max_seq_attach_ip_failures

        # @return [Object, nil] Number of max_seq_vnic_failures.,Default value when not specified in API or module is interpreted by Avi Controller as 3.
        attribute :max_seq_vnic_failures

        # @return [Object, nil] Allowed values are 1-1051200.,Special values are 0 - 'disabled'.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(MIN).
        attribute :persistence_key_rotate_period

        # @return [Object, nil] Token used for uploading tech-support to portal.,Field introduced in 16.4.6,17.1.2.
        attribute :portal_token

        # @return [Object, nil] Number of query_host_fail.,Default value when not specified in API or module is interpreted by Avi Controller as 180.,Units(SEC).
        attribute :query_host_fail

        # @return [Object, nil] Version of the safenet package installed on the controller.,Field introduced in 16.5.2,17.2.3.
        attribute :safenet_hsm_version

        # @return [Object, nil] Number of se_create_timeout.,Default value when not specified in API or module is interpreted by Avi Controller as 900.,Units(SEC).
        attribute :se_create_timeout

        # @return [Object, nil] Interval between attempting failovers to an se.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :se_failover_attempt_interval

        # @return [Object, nil] Number of se_offline_del.,Default value when not specified in API or module is interpreted by Avi Controller as 172000.,Units(SEC).
        attribute :se_offline_del

        # @return [Object, nil] Number of se_vnic_cooldown.,Default value when not specified in API or module is interpreted by Avi Controller as 120.,Units(SEC).
        attribute :se_vnic_cooldown

        # @return [Object, nil] Number of secure_channel_cleanup_timeout.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(MIN).
        attribute :secure_channel_cleanup_timeout

        # @return [Object, nil] Number of secure_channel_controller_token_timeout.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(MIN).
        attribute :secure_channel_controller_token_timeout

        # @return [Object, nil] Number of secure_channel_se_token_timeout.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(MIN).
        attribute :secure_channel_se_token_timeout

        # @return [Object, nil] Pool size used for all fabric commands during se upgrade.,Default value when not specified in API or module is interpreted by Avi Controller as 20.
        attribute :seupgrade_fabric_pool_size

        # @return [Object, nil] Time to wait before marking segroup upgrade as stuck.,Default value when not specified in API or module is interpreted by Avi Controller as 360.,Units(SEC).
        attribute :seupgrade_segroup_min_dead_timeout

        # @return [Object, nil] Number of days for ssl certificate expiry warning.,Units(DAYS).
        attribute :ssl_certificate_expiry_warning_days

        # @return [Object, nil] Number of unresponsive_se_reboot.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :unresponsive_se_reboot

        # @return [Object, nil] Time to account for dns ttl during upgrade.,This is in addition to vs_scalein_timeout_for_upgrade in se_group.,Field introduced in 17.1.1.,Default value when not specified in API or module is interpreted by Avi Controller as 5.,Units(SEC).
        attribute :upgrade_dns_ttl

        # @return [Object, nil] Number of upgrade_lease_time.,Default value when not specified in API or module is interpreted by Avi Controller as 360.,Units(SEC).
        attribute :upgrade_lease_time

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid

        # @return [Object, nil] Number of vnic_op_fail_time.,Default value when not specified in API or module is interpreted by Avi Controller as 180.,Units(SEC).
        attribute :vnic_op_fail_time

        # @return [Object, nil] Time to wait for the scaled out se to become ready before marking the scaleout done, applies to apic configuration only.,Default value when not specified in API or module is interpreted by Avi Controller as 360.,Units(SEC).
        attribute :vs_apic_scaleout_timeout

        # @return [Object, nil] Number of vs_awaiting_se_timeout.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(SEC).
        attribute :vs_awaiting_se_timeout

        # @return [Object, nil] Allowed values are 1-1051200.,Special values are 0 - 'disabled'.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(MIN).
        attribute :vs_key_rotate_period

        # @return [Object, nil] Time to wait before marking attach ip operation on an se as failed.,Field introduced in 17.2.2.,Default value when not specified in API or module is interpreted by Avi Controller as 3600.,Units(SEC).
        attribute :vs_se_attach_ip_fail

        # @return [Object, nil] Number of vs_se_bootup_fail.,Default value when not specified in API or module is interpreted by Avi Controller as 480.,Units(SEC).
        attribute :vs_se_bootup_fail

        # @return [Object, nil] Number of vs_se_create_fail.,Default value when not specified in API or module is interpreted by Avi Controller as 1500.,Units(SEC).
        attribute :vs_se_create_fail

        # @return [Object, nil] Number of vs_se_ping_fail.,Default value when not specified in API or module is interpreted by Avi Controller as 60.,Units(SEC).
        attribute :vs_se_ping_fail

        # @return [Object, nil] Number of vs_se_vnic_fail.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :vs_se_vnic_fail

        # @return [Object, nil] Number of vs_se_vnic_ip_fail.,Default value when not specified in API or module is interpreted by Avi Controller as 120.,Units(SEC).
        attribute :vs_se_vnic_ip_fail

        # @return [Object, nil] Number of warmstart_se_reconnect_wait_time.,Default value when not specified in API or module is interpreted by Avi Controller as 300.,Units(SEC).
        attribute :warmstart_se_reconnect_wait_time
      end
    end
  end
end
