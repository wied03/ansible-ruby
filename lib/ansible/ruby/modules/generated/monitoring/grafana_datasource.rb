# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/update/delete Grafana datasources via API.
      class Grafana_datasource < Base
        # @return [String] The Grafana URL.
        attribute :grafana_url
        validates :grafana_url, presence: true, type: String

        # @return [String] The name of the datasource.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:graphite, :prometheus, :elasticsearch, :influxdb, :opentsdb, :mysql, :postgres, :"alexanderzobnin-zabbix-datasource"] The type of the datasource.
        attribute :ds_type
        validates :ds_type, presence: true, expression_inclusion: {:in=>[:graphite, :prometheus, :elasticsearch, :influxdb, :opentsdb, :mysql, :postgres, :"alexanderzobnin-zabbix-datasource"], :message=>"%{value} needs to be :graphite, :prometheus, :elasticsearch, :influxdb, :opentsdb, :mysql, :postgres, :\"alexanderzobnin-zabbix-datasource\""}

        # @return [String] The URL of the datasource.
        attribute :url
        validates :url, presence: true, type: String

        # @return [:direct, :proxy, nil] The access mode for this datasource.
        attribute :access
        validates :access, expression_inclusion: {:in=>[:direct, :proxy], :message=>"%{value} needs to be :direct, :proxy"}, allow_nil: true

        # @return [String, nil] The Grafana API user.
        attribute :grafana_user
        validates :grafana_user, type: String

        # @return [String, nil] The Grafana API password.
        attribute :grafana_password
        validates :grafana_password, type: String

        # @return [Object, nil] The Grafana API key.,If set, C(grafana_user) and C(grafana_password) will be ignored.
        attribute :grafana_api_key

        # @return [String, nil] Name of the database for the datasource.,This options is required when the C(ds_type) is C(influxdb), C(elasticsearch) (index name), C(mysql) or C(postgres).
        attribute :database
        validates :database, type: String

        # @return [Object, nil] The datasource login user for influxdb datasources.
        attribute :user

        # @return [Object, nil] The datasource password
        attribute :password

        # @return [String, nil] The datasource basic auth user.,Setting this option with basic_auth_password will enable basic auth.
        attribute :basic_auth_user
        validates :basic_auth_user, type: String

        # @return [String, nil] The datasource basic auth password, when C(basic auth) is C(yes).
        attribute :basic_auth_password
        validates :basic_auth_password, type: String

        # @return [:yes, :no, nil] Whether credentials such as cookies or auth headers should be sent with cross-site requests.
        attribute :with_credentials
        validates :with_credentials, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The client TLS certificate.,If C(tls_client_cert) and C(tls_client_key) are set, this will enable TLS authentication.,Starts with ----- BEGIN CERTIFICATE -----
        attribute :tls_client_cert

        # @return [Object, nil] The client TLS private key,Starts with ----- BEGIN RSA PRIVATE KEY -----
        attribute :tls_client_key

        # @return [String, nil] The TLS CA certificate for self signed certificates.,Only used when C(tls_client_cert) and C(tls_client_key) are set.
        attribute :tls_ca_cert
        validates :tls_ca_cert, type: String

        # @return [Symbol, nil] Skip the TLS datasource certificate verification.
        attribute :tls_skip_verify
        validates :tls_skip_verify, type: Symbol

        # @return [:yes, :no, nil] Make this datasource the default one.
        attribute :is_default
        validates :is_default, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Grafana Organisation ID in which the datasource should be created.,Not used when C(grafana_api_key) is set, because the C(grafana_api_key) only belong to one organisation.
        attribute :org_id
        validates :org_id, type: Integer

        # @return [:absent, :present, nil] Status of the datasource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [2, 5, 56, nil] Elasticsearch version (for C(ds_type = elasticsearch) only),Version 56 is for elasticsearch 5.6+ where tou can specify the C(max_concurrent_shard_requests) option.
        attribute :es_version
        validates :es_version, expression_inclusion: {:in=>[2, 5, 56], :message=>"%{value} needs to be 2, 5, 56"}, allow_nil: true

        # @return [Integer, nil] Starting with elasticsearch 5.6, you can specify the max concurrent shard per requests.
        attribute :max_concurrent_shard_requests
        validates :max_concurrent_shard_requests, type: Integer

        # @return [String, nil] Name of the time field in elasticsearch ds.,For example C(@timestamp)
        attribute :time_field
        validates :time_field, type: String

        # @return [String, nil] Minimum group by interval for C(influxdb) or C(elasticsearch) datasources.,for example C(>10s)
        attribute :time_interval
        validates :time_interval, type: String

        # @return [:"", :Hourly, :Daily, :Weekly, :Monthly, :Yearly, nil] For elasticsearch C(ds_type), this is the index pattern used.
        attribute :interval
        validates :interval, expression_inclusion: {:in=>[:"", :Hourly, :Daily, :Weekly, :Monthly, :Yearly], :message=>"%{value} needs to be :\"\", :Hourly, :Daily, :Weekly, :Monthly, :Yearly"}, allow_nil: true

        # @return [1, 2, 3, nil] The opentsdb version.,Use C(1) for <=2.1, C(2) for ==2.2, C(3) for ==2.3.
        attribute :tsdb_version
        validates :tsdb_version, expression_inclusion: {:in=>[1, 2, 3], :message=>"%{value} needs to be 1, 2, 3"}, allow_nil: true

        # @return [:millisecond, :second, nil] The opentsdb time resolution.
        attribute :tsdb_resolution
        validates :tsdb_resolution, expression_inclusion: {:in=>[:millisecond, :second], :message=>"%{value} needs to be :millisecond, :second"}, allow_nil: true

        # @return [:disable, :require, :"verify-ca", :"verify-full", nil] SSL mode for C(postgres) datasoure type.
        attribute :sslmode
        validates :sslmode, expression_inclusion: {:in=>[:disable, :require, :"verify-ca", :"verify-full"], :message=>"%{value} needs to be :disable, :require, :\"verify-ca\", :\"verify-full\""}, allow_nil: true

        # @return [Symbol, nil] Use trends or not for zabbix datasource type
        attribute :trends
        validates :trends, type: Symbol

        # @return [:yes, :no, nil] Whether to validate the Grafana certificate.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
