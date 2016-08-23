# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pagerduty < Base
        # @return [:running, :started, :ongoing, :absent] Create a maintenance window or get a list of ongoing windows.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:running, :started, :ongoing, :absent], :message=>"%{value} needs to be :running, :started, :ongoing, :absent"}

        # @return [] PagerDuty unique subdomain.
        attribute :name
        validates :name, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [] PagerDuty user ID.
        attribute :user
        validates :user, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [] PagerDuty user password.
        attribute :passwd
        validates :passwd, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [] A pagerduty token, generated on the pagerduty site. Can be used instead of user/passwd combination.
        attribute :token
        validates :token, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [] ID of user making the request. Only needed when using a token and creating a maintenance_window.
        attribute :requester_id
        validates :requester_id, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [nil] A comma separated list of PagerDuty service IDs.
        attribute :service
        validates :service, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [nil] Length of maintenance window in hours.
        attribute :hours
        validates :hours, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [nil] Maintenance window in minutes (this is added to the hours).
        attribute :minutes
        validates :minutes, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [nil] Short description of maintenance window.
        attribute :desc
        validates :desc, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
