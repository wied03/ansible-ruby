# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Acquires and associates a public IP to an account or project.
      # Due to API limitations this is not an idempotent call, so be sure to only conditionally call this when C(state=present).
      # Tagging the IP address can also make the call idempotent.
      class Cs_ip_address < Base
        # @return [String, nil] Public IP address.,Required if C(state=absent) and C(tags) is not set
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

        # @return [:present, :absent, nil] State of the IP address.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] List of tags. Tags are a list of dictionaries having keys C(key) and C(value).,Tags can be used as an unique identifier for the IP Addresses.,In this case, at least one of them must be unique to ensure idempontency.
        attribute :tags
        validates :tags, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
