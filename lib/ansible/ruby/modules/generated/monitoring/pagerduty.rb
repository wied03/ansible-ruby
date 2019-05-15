# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will let you create PagerDuty maintenance windows
      class Pagerduty < Base
        # @return [:running, :started, :ongoing, :absent] Create a maintenance window or get a list of ongoing windows.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:running, :started, :ongoing, :absent], :message=>"%{value} needs to be :running, :started, :ongoing, :absent"}

        # @return [String, nil] PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.
        attribute :name
        validates :name, type: String

        # @return [String, nil] PagerDuty user ID. Obsolete. Please, use I(token) for authorization.
        attribute :user
        validates :user, type: String

        # @return [String] A pagerduty token, generated on the pagerduty site. It is used for authorization.
        attribute :token
        validates :token, presence: true, type: String

        # @return [Object, nil] ID of user making the request. Only needed when creating a maintenance_window.
        attribute :requester_id

        # @return [String, nil] A comma separated list of PagerDuty service IDs.
        attribute :service
        validates :service, type: String

        # @return [String, nil] ID of maintenance window. Only needed when absent a maintenance_window.
        attribute :window_id
        validates :window_id, type: String

        # @return [Integer, nil] Length of maintenance window in hours.
        attribute :hours
        validates :hours, type: Integer

        # @return [Integer, nil] Maintenance window in minutes (this is added to the hours).
        attribute :minutes
        validates :minutes, type: Integer

        # @return [String, nil] Short description of maintenance window.
        attribute :desc
        validates :desc, type: String

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
