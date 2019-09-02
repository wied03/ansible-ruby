# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The Users resource represents a database user in a Cloud SQL instance.
      class Gcp_sql_user < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The host name from which the user can connect. For insert operations, host defaults to an empty string. For update operations, host is specified as part of the request URL. The host name cannot be updated after insertion.
        attribute :host
        validates :host, presence: true, type: String

        # @return [String] The name of the user in the Cloud SQL instance.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The name of the Cloud SQL instance. This does not include the project ID.
        attribute :instance
        validates :instance, presence: true, type: String

        # @return [String, nil] The password for the user.
        attribute :password
        validates :password, type: String
      end
    end
  end
end
