# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set and/or get members' attributes of an Apache httpd 2.4 mod_proxy balancer pool, using HTTP POST and GET requests. The httpd mod_proxy balancer-member status page has to be enabled and accessible, as this module relies on parsing this page. This module supports ansible check_mode, and requires BeautifulSoup python module.
      class Apache2_mod_proxy < Base
        # @return [String, nil] Suffix of the balancer pool url required to access the balancer pool status page (e.g. balancer_vhost[:port]/balancer_url_suffix).
        attribute :balancer_url_suffix
        validates :balancer_url_suffix, type: String

        # @return [String] (ipv4|ipv6|fqdn):port of the Apache httpd 2.4 mod_proxy balancer pool.
        attribute :balancer_vhost
        validates :balancer_vhost, presence: true, type: String

        # @return [String, nil] (ipv4|ipv6|fqdn) of the balancer member to get or to set attributes to. Port number is autodetected and should not be specified here. If undefined, apache2_mod_proxy module will return a members list of dictionaries of all the current balancer pool members' attributes.
        attribute :member_host
        validates :member_host, type: String

        # @return [:present, :absent, :enabled, :disabled, :drained, :hot_standby, :ignore_errors, nil] Desired state of the member host. (absent|disabled),drained,hot_standby,ignore_errors can be simultaneously invoked by separating them with a comma (e.g. state=drained,ignore_errors).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled, :drained, :hot_standby, :ignore_errors], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled, :drained, :hot_standby, :ignore_errors"}, allow_nil: true

        # @return [Boolean, nil] Use https to access balancer management page.
        attribute :tls
        validates :tls, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Validate ssl/tls certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
