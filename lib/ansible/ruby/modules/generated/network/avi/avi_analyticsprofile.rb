# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure AnalyticsProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_analyticsprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Integer, nil] If a client receives an http response in less than the satisfactory latency threshold, the request is considered satisfied.,It is considered tolerated if it is not satisfied and less than tolerated latency factor multiplied by the satisfactory latency threshold.,Greater than this number and the client's request is considered frustrated.,Default value when not specified in API or module is interpreted by Avi Controller as 500.
        attribute :apdex_response_threshold
        validates :apdex_response_threshold, type: Integer

        # @return [Float, nil] Client tolerated response latency factor.,Client must receive a response within this factor times the satisfactory threshold (apdex_response_threshold) to be considered tolerated.,Default value when not specified in API or module is interpreted by Avi Controller as 4.0.
        attribute :apdex_response_tolerated_factor
        validates :apdex_response_tolerated_factor, type: Float

        # @return [Integer, nil] Satisfactory client to avi round trip time(rtt).,Default value when not specified in API or module is interpreted by Avi Controller as 250.
        attribute :apdex_rtt_threshold
        validates :apdex_rtt_threshold, type: Integer

        # @return [Float, nil] Tolerated client to avi round trip time(rtt) factor.,It is a multiple of apdex_rtt_tolerated_factor.,Default value when not specified in API or module is interpreted by Avi Controller as 4.0.
        attribute :apdex_rtt_tolerated_factor
        validates :apdex_rtt_tolerated_factor, type: Float

        # @return [Integer, nil] If a client is able to load a page in less than the satisfactory latency threshold, the pageload is considered satisfied.,It is considered tolerated if it is greater than satisfied but less than the tolerated latency multiplied by satisifed latency.,Greater than this number and the client's request is considered frustrated.,A pageload includes the time for dns lookup, download of all http objects, and page render time.,Default value when not specified in API or module is interpreted by Avi Controller as 5000.
        attribute :apdex_rum_threshold
        validates :apdex_rum_threshold, type: Integer

        # @return [Float, nil] Virtual service threshold factor for tolerated page load time (plt) as multiple of apdex_rum_threshold.,Default value when not specified in API or module is interpreted by Avi Controller as 4.0.
        attribute :apdex_rum_tolerated_factor
        validates :apdex_rum_tolerated_factor, type: Float

        # @return [Integer, nil] A server http response is considered satisfied if latency is less than the satisfactory latency threshold.,The response is considered tolerated when it is greater than satisfied but less than the tolerated latency factor * s_latency.,Greater than this number and the server response is considered frustrated.,Default value when not specified in API or module is interpreted by Avi Controller as 400.
        attribute :apdex_server_response_threshold
        validates :apdex_server_response_threshold, type: Integer

        # @return [Float, nil] Server tolerated response latency factor.,Servermust response within this factor times the satisfactory threshold (apdex_server_response_threshold) to be considered tolerated.,Default value when not specified in API or module is interpreted by Avi Controller as 4.0.
        attribute :apdex_server_response_tolerated_factor
        validates :apdex_server_response_tolerated_factor, type: Float

        # @return [Integer, nil] Satisfactory client to avi round trip time(rtt).,Default value when not specified in API or module is interpreted by Avi Controller as 125.
        attribute :apdex_server_rtt_threshold
        validates :apdex_server_rtt_threshold, type: Integer

        # @return [Float, nil] Tolerated client to avi round trip time(rtt) factor.,It is a multiple of apdex_rtt_tolerated_factor.,Default value when not specified in API or module is interpreted by Avi Controller as 4.0.
        attribute :apdex_server_rtt_tolerated_factor
        validates :apdex_server_rtt_tolerated_factor, type: Float

        # @return [Object, nil] Clientlogconfiguration settings for analyticsprofile.
        attribute :client_log_config

        # @return [Integer, nil] A connection between client and avi is considered lossy when more than this percentage of out of order packets are received.,Default value when not specified in API or module is interpreted by Avi Controller as 50.
        attribute :conn_lossy_ooo_threshold
        validates :conn_lossy_ooo_threshold, type: Integer

        # @return [Integer, nil] A connection between client and avi is considered lossy when more than this percentage of packets are retransmitted due to timeout.,Default value when not specified in API or module is interpreted by Avi Controller as 20.
        attribute :conn_lossy_timeo_rexmt_threshold
        validates :conn_lossy_timeo_rexmt_threshold, type: Integer

        # @return [Integer, nil] A connection between client and avi is considered lossy when more than this percentage of packets are retransmitted.,Default value when not specified in API or module is interpreted by Avi Controller as 50.
        attribute :conn_lossy_total_rexmt_threshold
        validates :conn_lossy_total_rexmt_threshold, type: Integer

        # @return [Integer, nil] A client connection is considered lossy when percentage of times a packet could not be trasmitted due to tcp zero window is above this threshold.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :conn_lossy_zero_win_size_event_threshold
        validates :conn_lossy_zero_win_size_event_threshold, type: Integer

        # @return [Integer, nil] A connection between avi and server is considered lossy when more than this percentage of out of order packets are received.,Default value when not specified in API or module is interpreted by Avi Controller as 50.
        attribute :conn_server_lossy_ooo_threshold
        validates :conn_server_lossy_ooo_threshold, type: Integer

        # @return [Integer, nil] A connection between avi and server is considered lossy when more than this percentage of packets are retransmitted due to timeout.,Default value when not specified in API or module is interpreted by Avi Controller as 20.
        attribute :conn_server_lossy_timeo_rexmt_threshold
        validates :conn_server_lossy_timeo_rexmt_threshold, type: Integer

        # @return [Integer, nil] A connection between avi and server is considered lossy when more than this percentage of packets are retransmitted.,Default value when not specified in API or module is interpreted by Avi Controller as 50.
        attribute :conn_server_lossy_total_rexmt_threshold
        validates :conn_server_lossy_total_rexmt_threshold, type: Integer

        # @return [Integer, nil] A server connection is considered lossy when percentage of times a packet could not be trasmitted due to tcp zero window is above this threshold.,Default value when not specified in API or module is interpreted by Avi Controller as 2.
        attribute :conn_server_lossy_zero_win_size_event_threshold
        validates :conn_server_lossy_zero_win_size_event_threshold, type: Integer

        # @return [Object, nil] User defined description for the object.
        attribute :description

        # @return [Boolean, nil] Disable node (service engine) level analytics forvs metrics.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :disable_se_analytics
        validates :disable_se_analytics, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Disable analytics on backend servers.,This may be desired in container environment when there are large number of  ephemeral servers.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :disable_server_analytics
        validates :disable_server_analytics, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Exclude client closed connection before an http request could be completed from being classified as an error.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_client_close_before_request_as_error
        validates :exclude_client_close_before_request_as_error, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Exclude queries to gslb services that are operationally down from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_gs_down_as_error

        # @return [Object, nil] List of http status codes to be excluded from being classified as an error.,Error connections or responses impacts health score, are included as significant logs, and may be classified as part of a dos attack.
        attribute :exclude_http_error_codes

        # @return [Object, nil] Exclude dns queries to domains outside the domains configured in the dns application profile from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_invalid_dns_domain_as_error

        # @return [Object, nil] Exclude invalid dns queries from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_invalid_dns_query_as_error

        # @return [Object, nil] Exclude queries to domains that did not have configured services/records from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_no_dns_record_as_error

        # @return [Object, nil] Exclude queries to gslb services that have no available members from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_no_valid_gs_member_as_error

        # @return [Boolean, nil] Exclude persistence server changed while load balancing' from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_persistence_change_as_error
        validates :exclude_persistence_change_as_error, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Exclude server dns error response from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_server_dns_error_as_error

        # @return [Boolean, nil] Exclude server tcp reset from errors.,It is common for applications like ms exchange.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_server_tcp_reset_as_error
        validates :exclude_server_tcp_reset_as_error, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Exclude 'server unanswered syns' from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_syn_retransmit_as_error
        validates :exclude_syn_retransmit_as_error, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Exclude tcp resets by client from the list of potential errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_tcp_reset_as_error
        validates :exclude_tcp_reset_as_error, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Exclude unsupported dns queries from the list of errors.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :exclude_unsupported_dns_query_as_error

        # @return [Integer, nil] Time window (in secs) within which only unique health change events should occur.,Default value when not specified in API or module is interpreted by Avi Controller as 1209600.
        attribute :hs_event_throttle_window
        validates :hs_event_throttle_window, type: Integer

        # @return [Integer, nil] Maximum penalty that may be deducted from health score for anomalies.,Default value when not specified in API or module is interpreted by Avi Controller as 10.
        attribute :hs_max_anomaly_penalty
        validates :hs_max_anomaly_penalty, type: Integer

        # @return [Integer, nil] Maximum penalty that may be deducted from health score for high resource utilization.,Default value when not specified in API or module is interpreted by Avi Controller as 25.
        attribute :hs_max_resources_penalty
        validates :hs_max_resources_penalty, type: Integer

        # @return [Integer, nil] Maximum penalty that may be deducted from health score based on security assessment.,Default value when not specified in API or module is interpreted by Avi Controller as 100.
        attribute :hs_max_security_penalty
        validates :hs_max_security_penalty, type: Integer

        # @return [Integer, nil] Dos connection rate below which the dos security assessment will not kick in.,Default value when not specified in API or module is interpreted by Avi Controller as 1000.
        attribute :hs_min_dos_rate
        validates :hs_min_dos_rate, type: Integer

        # @return [Integer, nil] Adds free performance score credits to health score.,It can be used for compensating health score for known slow applications.,Default value when not specified in API or module is interpreted by Avi Controller as 0.
        attribute :hs_performance_boost
        validates :hs_performance_boost, type: Integer

        # @return [Float, nil] Threshold number of connections in 5min, below which apdexr, apdexc, rum_apdex, and other network quality metrics are not computed.,Default value when not specified in API or module is interpreted by Avi Controller as 10.0.
        attribute :hs_pscore_traffic_threshold_l4_client
        validates :hs_pscore_traffic_threshold_l4_client, type: Float

        # @return [Float, nil] Threshold number of connections in 5min, below which apdexr, apdexc, rum_apdex, and other network quality metrics are not computed.,Default value when not specified in API or module is interpreted by Avi Controller as 10.0.
        attribute :hs_pscore_traffic_threshold_l4_server
        validates :hs_pscore_traffic_threshold_l4_server, type: Float

        # @return [Float, nil] Score assigned when the certificate has expired.,Default value when not specified in API or module is interpreted by Avi Controller as 0.0.
        attribute :hs_security_certscore_expired
        validates :hs_security_certscore_expired, type: Float

        # @return [Float, nil] Score assigned when the certificate expires in more than 30 days.,Default value when not specified in API or module is interpreted by Avi Controller as 5.0.
        attribute :hs_security_certscore_gt30d
        validates :hs_security_certscore_gt30d, type: Float

        # @return [Float, nil] Score assigned when the certificate expires in less than or equal to 7 days.,Default value when not specified in API or module is interpreted by Avi Controller as 2.0.
        attribute :hs_security_certscore_le07d
        validates :hs_security_certscore_le07d, type: Float

        # @return [Float, nil] Score assigned when the certificate expires in less than or equal to 30 days.,Default value when not specified in API or module is interpreted by Avi Controller as 4.0.
        attribute :hs_security_certscore_le30d
        validates :hs_security_certscore_le30d, type: Float

        # @return [Float, nil] Penalty for allowing certificates with invalid chain.,Default value when not specified in API or module is interpreted by Avi Controller as 1.0.
        attribute :hs_security_chain_invalidity_penalty
        validates :hs_security_chain_invalidity_penalty, type: Float

        # @return [Float, nil] Score assigned when the minimum cipher strength is 0 bits.,Default value when not specified in API or module is interpreted by Avi Controller as 0.0.
        attribute :hs_security_cipherscore_eq000b
        validates :hs_security_cipherscore_eq000b, type: Float

        # @return [Float, nil] Score assigned when the minimum cipher strength is greater than equal to 128 bits.,Default value when not specified in API or module is interpreted by Avi Controller as 5.0.
        attribute :hs_security_cipherscore_ge128b
        validates :hs_security_cipherscore_ge128b, type: Float

        # @return [Float, nil] Score assigned when the minimum cipher strength is less than 128 bits.,Default value when not specified in API or module is interpreted by Avi Controller as 3.5.
        attribute :hs_security_cipherscore_lt128b
        validates :hs_security_cipherscore_lt128b, type: Float

        # @return [Float, nil] Score assigned when no algorithm is used for encryption.,Default value when not specified in API or module is interpreted by Avi Controller as 0.0.
        attribute :hs_security_encalgo_score_none
        validates :hs_security_encalgo_score_none, type: Float

        # @return [Float, nil] Score assigned when rc4 algorithm is used for encryption.,Default value when not specified in API or module is interpreted by Avi Controller as 2.5.
        attribute :hs_security_encalgo_score_rc4
        validates :hs_security_encalgo_score_rc4, type: Float

        # @return [Float, nil] Penalty for not enabling hsts.,Default value when not specified in API or module is interpreted by Avi Controller as 1.0.
        attribute :hs_security_hsts_penalty
        validates :hs_security_hsts_penalty, type: Float

        # @return [Float, nil] Penalty for allowing non-pfs handshakes.,Default value when not specified in API or module is interpreted by Avi Controller as 1.0.
        attribute :hs_security_nonpfs_penalty
        validates :hs_security_nonpfs_penalty, type: Float

        # @return [Float, nil] Deprecated.,Default value when not specified in API or module is interpreted by Avi Controller as 1.0.
        attribute :hs_security_selfsignedcert_penalty
        validates :hs_security_selfsignedcert_penalty, type: Float

        # @return [Float, nil] Score assigned when supporting ssl3.0 encryption protocol.,Default value when not specified in API or module is interpreted by Avi Controller as 3.5.
        attribute :hs_security_ssl30_score
        validates :hs_security_ssl30_score, type: Float

        # @return [Float, nil] Score assigned when supporting tls1.0 encryption protocol.,Default value when not specified in API or module is interpreted by Avi Controller as 5.0.
        attribute :hs_security_tls10_score
        validates :hs_security_tls10_score, type: Float

        # @return [Float, nil] Score assigned when supporting tls1.1 encryption protocol.,Default value when not specified in API or module is interpreted by Avi Controller as 5.0.
        attribute :hs_security_tls11_score
        validates :hs_security_tls11_score, type: Float

        # @return [Float, nil] Score assigned when supporting tls1.2 encryption protocol.,Default value when not specified in API or module is interpreted by Avi Controller as 5.0.
        attribute :hs_security_tls12_score
        validates :hs_security_tls12_score, type: Float

        # @return [Float, nil] Penalty for allowing weak signature algorithm(s).,Default value when not specified in API or module is interpreted by Avi Controller as 1.0.
        attribute :hs_security_weak_signature_algo_penalty
        validates :hs_security_weak_signature_algo_penalty, type: Float

        # @return [String] The name of the analytics profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] List of http status code ranges to be excluded from being classified as an error.
        attribute :ranges

        # @return [Object, nil] Block of http response codes to be excluded from being classified as an error.
        attribute :resp_code_block

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the analytics profile.
        attribute :uuid
      end
    end
  end
end
