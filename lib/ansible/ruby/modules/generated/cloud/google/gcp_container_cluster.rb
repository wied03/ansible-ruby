# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A Google Container Engine cluster.
      class Gcp_container_cluster < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name of this cluster. The name must be unique within this project and zone, and can be up to 40 characters. Must be Lowercase letters, numbers, and hyphens only. Must start with a letter. Must end with a number or a letter.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] An optional description of this cluster.
        attribute :description

        # @return [Integer] The number of nodes to create in this cluster. You must ensure that your Compute Engine resource quota is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "nodePool" object, since this configuration (along with the "nodeConfig") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a nodePool at the same time.
        attribute :initial_node_count
        validates :initial_node_count, presence: true, type: Integer

        # @return [Hash, nil] Parameters used in creating the cluster's nodes.,For requests, this field should only be used in lieu of a "nodePool" object, since this configuration (along with the "initialNodeCount") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a nodePool at the same time. For responses, this field will be populated with the node configuration of the first node pool. If unspecified, the defaults are used.
        attribute :node_config
        validates :node_config, type: Hash

        # @return [Hash, nil] The authentication information for accessing the master endpoint.
        attribute :master_auth
        validates :master_auth, type: Hash

        # @return [:"logging.googleapis.com", :none, nil] The logging service the cluster should use to write logs. Currently available options:  logging.googleapis.com - the Google Cloud Logging service.,none - no logs will be exported from the cluster.,if left as an empty string,logging.googleapis.com will be used.
        attribute :logging_service
        validates :logging_service, inclusion: {:in=>[:"logging.googleapis.com", :none], :message=>"%{value} needs to be :\"logging.googleapis.com\", :none"}, allow_nil: true

        # @return [:"monitoring.googleapis.com", :none, nil] The monitoring service the cluster should use to write metrics.,Currently available options:  monitoring.googleapis.com - the Google Cloud Monitoring service.,none - no metrics will be exported from the cluster.,if left as an empty string, monitoring.googleapis.com will be used.
        attribute :monitoring_service
        validates :monitoring_service, inclusion: {:in=>[:"monitoring.googleapis.com", :none], :message=>"%{value} needs to be :\"monitoring.googleapis.com\", :none"}, allow_nil: true

        # @return [Object, nil] The name of the Google Compute Engine network to which the cluster is connected. If left unspecified, the default network will be used.,To ensure it exists and it is operations, configure the network using 'gcompute_network' resource.
        attribute :network

        # @return [Object, nil] The IP address range of the container pods in this cluster, in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8.
        attribute :cluster_ipv4_cidr

        # @return [Object, nil] Configurations for the various addons available to run in the cluster.
        attribute :addons_config

        # @return [Object, nil] The name of the Google Compute Engine subnetwork to which the cluster is connected.
        attribute :subnetwork

        # @return [Object, nil] The list of Google Compute Engine locations in which the cluster's nodes should be located.
        attribute :location

        # @return [String] The zone where the cluster is deployed.
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
