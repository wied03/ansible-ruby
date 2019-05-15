# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, delete, export Grafana dashboards via API.
      class Grafana_dashboard < Base
        # @return [Object] The Grafana URL.
        attribute :url
        validates :url, presence: true

        # @return [String, nil] The Grafana API user.
        attribute :url_username
        validates :url_username, type: String

        # @return [String, nil] The Grafana API password.
        attribute :url_password
        validates :url_password, type: String

        # @return [Object, nil] The Grafana API key.,If set, I(grafana_user) and I(grafana_password) will be ignored.
        attribute :grafana_api_key

        # @return [Integer, nil] The Grafana Organisation ID where the dashboard will be imported / exported.,Not used when I(grafana_api_key) is set, because the grafana_api_key only belongs to one organisation..
        attribute :org_id
        validates :org_id, type: Integer

        # @return [:absent, :export, :present] State of the dashboard.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :export, :present], :message=>"%{value} needs to be :absent, :export, :present"}

        # @return [Object, nil] Deprecated since Grafana 5. Use grafana dashboard uid instead.,slug of the dashboard. It's the friendly url name of the dashboard.,When C(state) is C(present), this parameter can override the slug in the meta section of the json file.,If you want to import a json dashboard exported directly from the interface (not from the api), you have to specify the slug parameter because there is no meta section in the exported json.
        attribute :slug

        # @return [Object, nil] uid of the dasboard to export when C(state) is C(export) or C(absent).
        attribute :uid

        # @return [Object, nil] The path to the json file containing the Grafana dashboard to import or export.
        attribute :path

        # @return [String, nil] Override existing dashboard when state is present.
        attribute :overwrite
        validates :overwrite, type: String

        # @return [Object, nil] Set a commit message for the version history.,Only used when C(state) is C(present).
        attribute :message

        # @return [String, nil] If C(no), SSL certificates will not be validated.,This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [Object, nil] PEM formatted certificate chain file to be used for SSL client authentication.,This file can also include the key as well, and if the key is included, client_key is not required
        attribute :client_cert

        # @return [Object, nil] PEM formatted file that contains your private key to be used for SSL client,authentication. If client_cert contains both the certificate and key, this option is not required
        attribute :client_key

        # @return [String, nil] Boolean of whether or not to use proxy.
        attribute :use_proxy
        validates :use_proxy, type: String
      end
    end
  end
end
