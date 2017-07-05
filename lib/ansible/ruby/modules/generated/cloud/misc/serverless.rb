# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides support for managing Serverless Framework (https://serverless.com/) project deployments and stacks.
      class Serverless < Base
        # @return [:present, :absent, nil] Goal state of given stage/project
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The path to the root of the Serverless Service to be operated on.
        attribute :service_path
        validates :service_path, presence: true, type: String

        # @return [Object, nil] A list of specific functions to deploy. If this is not provided, all functions in the service will be deployed.
        attribute :functions

        # @return [String, nil] AWS region to deploy the service to
        attribute :region
        validates :region, type: String

        # @return [Boolean, nil] Whether or not to deploy artifacts after building them. When this option is `false` all the functions will be built, but no stack update will be run to send them out. This is mostly useful for generating artifacts to be stored/deployed elsewhere.
        attribute :deploy
        validates :deploy, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
