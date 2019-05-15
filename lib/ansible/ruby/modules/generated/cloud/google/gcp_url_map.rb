# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Update or Destory a Url_Map. See U(https://cloud.google.com/compute/docs/load-balancing/http/url-map) for an overview. More details on the Url_Map API can be found at U(https://cloud.google.com/compute/docs/reference/latest/urlMaps#resource).
      class Gcp_url_map < Base
        # @return [String] Name of the Url_Map.
        attribute :url_map_name
        validates :url_map_name, presence: true, type: String

        # @return [String] Default Backend Service if no host rules match.
        attribute :default_service
        validates :default_service, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] The list of HostRules to use against the URL. Contains a list of hosts and an associated path_matcher.,The 'hosts' parameter is a list of host patterns to match. They must be valid hostnames, except * will match any string of ([a-z0-9-.]*). In that case, * must be the first character and must be followed in the pattern by either - or ..,The 'path_matcher' parameter is name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion.
        attribute :host_rules
        validates :host_rules, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] The list of named PathMatchers to use against the URL. Contains path_rules, which is a list of paths and an associated service. A default_service can also be specified for each path_matcher.,The 'name' parameter to which this path_matcher is referred by the host_rule.,The 'default_service' parameter is the name of the BackendService resource. This will be used if none of the path_rules defined by this path_matcher is matched by the URL's path portion.,The 'path_rules' parameter is a list of dictionaries containing a list of paths and a service to direct traffic to. Each path item must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or
        attribute :path_matchers
        validates :path_matchers, type: TypeGeneric.new(Hash)
      end
    end
  end
end
