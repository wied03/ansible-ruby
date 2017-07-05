# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Acquires and associates a public IP to an account or project. Due to API limitations this is not an idempotent call, so be sure to only conditionally call this when C(state=present)
      class Cs_ip_address < Base
        # @return [String, nil] Public IP address.,Required if C(state=absent)
        attribute :ip_address
        validates :ip_address, type: String

        # @return [Object, nil] Domain the IP address is related to.
        attribute :domain

        # @return [String, nil] Network the IP address is related to.
        attribute :network
        validates :network, type: String

        # @return [Object, nil] VPC the IP address is related to.
        attribute :vpc

        # @return [Object, nil] Account the IP address is related to.
        attribute :account

        # @return [Object, nil] Name of the project the IP address is related to.
        attribute :project

        # @return [Object, nil] Name of the zone in which the IP address is in.,If not set, default zone is used.
        attribute :zone

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
