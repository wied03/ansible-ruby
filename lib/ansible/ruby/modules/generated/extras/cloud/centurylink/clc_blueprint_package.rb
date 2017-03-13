# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An Ansible module to deploy blue print package on a set of servers in CenturyLink Cloud.
      class Clc_blueprint_package < Base
        # @return [Array<String>, String] A list of server Ids to deploy the blue print package.
        attribute :server_ids
        validates :server_ids, presence: true, type: TypeGeneric.new(String)

        # @return [String] The package id of the blue print.
        attribute :package_id
        validates :package_id, presence: true, type: String

        # @return [Object, nil] The dictionary of arguments required to deploy the blue print.
        attribute :package_params

        # @return [:present, nil] Whether to install or un-install the package. Currently it supports only "present" for install action.
        attribute :state
        validates :state, inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true

        # @return [Boolean, nil] Whether to wait for the tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
