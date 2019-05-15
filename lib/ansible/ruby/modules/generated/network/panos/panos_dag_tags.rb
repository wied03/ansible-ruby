# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create the ip address to tag associations. Tags will in turn be used to create DAG's
      class Panos_dag_tags < Base
        # @return [Object, nil] API key that can be used instead of I(username)/I(password) credentials.
        attribute :api_key

        # @return [String, nil] The purpose / objective of the static Address Group
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] commit if changed
        attribute :commit
        validates :commit, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] - Device groups are used for the Panorama interaction with Firewall(s). The group must exists on Panorama. If device group is not define we assume that we are contacting Firewall.\r\n
        attribute :devicegroup

        # @return [String, nil] The action to be taken. Supported values are I(add)/I(update)/I(find)/I(delete).
        attribute :operation
        validates :operation, type: String

        # @return [String, nil] The list of the tags that will be added or removed from the IP address.
        attribute :tag_names
        validates :tag_names, type: String

        # @return [String, nil] IP that will be registered with the given tag names.
        attribute :ip_to_register
        validates :ip_to_register, type: String
      end
    end
  end
end
