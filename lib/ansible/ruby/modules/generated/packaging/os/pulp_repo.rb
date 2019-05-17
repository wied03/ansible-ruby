# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove Pulp repos from a remote host.
      class Pulp_repo < Base
        # @return [:yes, :no, nil] Whether or not to add the export distributor to new C(rpm) repositories.
        attribute :add_export_distributor
        validates :add_export_distributor, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Upstream feed URL to receive updates from.
        attribute :feed
        validates :feed, type: String

        # @return [:yes, :no, nil] httplib2, the library used by the M(uri) module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.
        attribute :force_basic_auth
        validates :force_basic_auth, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] CA certificate string used to validate the feed source SSL certificate. This can be the file content or the path to the file.
        attribute :importer_ssl_ca_cert

        # @return [Object, nil] Certificate used as the client certificate when synchronizing the repository. This is used to communicate authentication information to the feed source. The value to this option must be the full path to the certificate. The specified file may be the certificate itself or a single file containing both the certificate and private key. This can be the file content or the path to the file.
        attribute :importer_ssl_client_cert

        # @return [Object, nil] Private key to the certificate specified in I(importer_ssl_client_cert), assuming it is not included in the certificate file itself. This can be the file content or the path to the file.
        attribute :importer_ssl_client_key

        # @return [String] Name of the repo to add or remove. This correlates to repo-id in Pulp.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Proxy url setting for the pulp repository importer. This is in the format scheme://host.
        attribute :proxy_host

        # @return [Object, nil] Proxy port setting for the pulp repository importer.
        attribute :proxy_port

        # @return [Object, nil] Distributor to use when state is C(publish). The default is to publish all distributors.
        attribute :publish_distributor

        # @return [String, nil] URL of the pulp server to connect to.
        attribute :pulp_host
        validates :pulp_host, type: String

        # @return [String] Relative URL for the local repository.
        attribute :relative_url
        validates :relative_url, presence: true, type: String

        # @return [String, nil] Repo plugin type to use (i.e. C(rpm), C(docker)).
        attribute :repo_type
        validates :repo_type, type: String

        # @return [:yes, :no, nil] Make the repo available over HTTP.
        attribute :serve_http
        validates :serve_http, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Make the repo available over HTTPS.
        attribute :serve_https
        validates :serve_https, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, :sync, :publish, nil] The repo state. A state of C(sync) will queue a sync of the repo. This is asynchronous but not delayed like a scheduled sync. A state of C(publish) will use the repository's distributor to publish the content.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :sync, :publish], :message=>"%{value} needs to be :present, :absent, :sync, :publish"}, allow_nil: true

        # @return [String, nil] The password for use in HTTP basic authentication to the pulp API. If the I(url_username) parameter is not specified, the I(url_password) parameter will not be used.
        attribute :url_password
        validates :url_password, type: String

        # @return [String, nil] The username for use in HTTP basic authentication to the pulp API.
        attribute :url_username
        validates :url_username, type: String

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Wait for asynchronous tasks to complete before returning.
        attribute :wait_for_completion
        validates :wait_for_completion, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
