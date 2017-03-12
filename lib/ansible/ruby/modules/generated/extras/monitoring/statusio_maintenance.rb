# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates a maintenance window for status.io
      # Deletes a maintenance window for status.io
      class Statusio_maintenance < Base
        # @return [String, nil] A descriptive title for the maintenance window
        attribute :title
        validates :title, type: String

        # @return [String, nil] Message describing the maintenance window
        attribute :desc
        validates :desc, type: String

        # @return [:present, :absent, nil] Desired state of the package.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Your unique API ID from status.io
        attribute :api_id
        validates :api_id, presence: true, type: String

        # @return [String] Your unique API Key from status.io
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] Your unique StatusPage ID from status.io
        attribute :statuspage
        validates :statuspage, presence: true, type: String

        # @return [String, nil] Status.io API URL. A private apiary can be used instead.
        attribute :url
        validates :url, type: String

        # @return [Array<String>, String, nil] The given name of your component (server name)
        attribute :components
        validates :components, type: TypeGeneric.new(String)

        # @return [Object, nil] The given name of your container (data center)
        attribute :containers

        # @return [Boolean, nil] If it affects all components and containers
        attribute :all_infrastructure_affected
        validates :all_infrastructure_affected, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Automatically start and end the maintenance window
        attribute :automation
        validates :automation, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Notify subscribers now
        attribute :maintenance_notify_now
        validates :maintenance_notify_now, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Notify subscribers 72 hours before maintenance start time
        attribute :maintenance_notify_72_hr
        validates :maintenance_notify_72_hr, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Notify subscribers 24 hours before maintenance start time
        attribute :maintenance_notify_24_hr
        validates :maintenance_notify_24_hr, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Notify subscribers 1 hour before maintenance start time
        attribute :maintenance_notify_1_hr
        validates :maintenance_notify_1_hr, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The maintenance id number when deleting a maintenance window
        attribute :maintenance_id
        validates :maintenance_id, type: String

        # @return [Integer, nil] The length of time in UTC that the maintenance will run             (starting from playbook runtime)
        attribute :minutes
        validates :minutes, type: Integer

        # @return [String, nil] Date maintenance is expected to start (Month/Day/Year) (UTC),End Date is worked out from start_date + minutes
        attribute :start_date
        validates :start_date, type: String

        # @return [String, nil] Time maintenance is expected to start (Hour:Minutes) (UTC),End Time is worked out from start_time + minutes
        attribute :start_time
        validates :start_time, type: String
      end
    end
  end
end
