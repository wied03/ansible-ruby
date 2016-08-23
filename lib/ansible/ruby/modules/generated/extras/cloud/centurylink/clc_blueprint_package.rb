# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Clc_blueprint_package < Base
        # @return [Object] A list of server Ids to deploy the blue print package.
        attribute :server_ids
        validates :server_ids, presence: true

        # @return [Object] The package id of the blue print.
        attribute :package_id
        validates :package_id, presence: true

        # @return [Hash] The dictionary of arguments required to deploy the blue print.
        attribute :package_params
        validates :package_params, type: Hash

        # @return [String] Whether to install or un-install the package. Currently it supports only "present" for install action.
        attribute :state
        validates :state, inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true

        # @return [TrueClass] Whether to wait for the tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
