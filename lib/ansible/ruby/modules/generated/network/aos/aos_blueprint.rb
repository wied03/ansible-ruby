# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apstra AOS Blueprint module let you manage your Blueprint easily. You can create create and delete Blueprint by Name or ID. You can also use it to retrieve all data from a blueprint. This module is idempotent and support the I(check) mode. It's using the AOS REST API.
      class Aos_blueprint < Base
        # @return [String] An existing AOS session as obtained by M(aos_login) module.
        attribute :session
        validates :session, presence: true, type: String

        # @return [String, nil] Name of the Blueprint to manage. Only one of I(name) or I(id) can be set.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] AOS Id of the IP Pool to manage (can't be used to create a new IP Pool). Only one of I(name) or I(id) can be set.
        attribute :id

        # @return [:present, :absent, :"build-ready", nil] Indicate what is the expected state of the Blueprint.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :"build-ready"], :message=>"%{value} needs to be :present, :absent, :\"build-ready\""}, allow_nil: true

        # @return [Integer, nil] When I(state=build-ready), this timeout identifies timeout in seconds to wait before declaring a failure.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] When creating a blueprint, this value identifies, by name, an existing engineering design template within the AOS-server.
        attribute :template
        validates :template, type: String

        # @return [String, nil] When creating a blueprint, this value identifies a known AOS reference architecture value. I(Refer to AOS-server documentation for available values).
        attribute :reference_arch
        validates :reference_arch, type: String
      end
    end
  end
end
