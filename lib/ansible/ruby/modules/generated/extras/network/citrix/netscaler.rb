# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Netscaler < Base
        # @return [Object] hostname or ip of your netscaler
        attribute :nsc_host
        validates :nsc_host, presence: true

        # @return [String, nil] protocol used to access netscaler
        attribute :nsc_protocol
        validates :nsc_protocol, type: String

        # @return [Object] username
        attribute :user
        validates :user, presence: true

        # @return [Object] password
        attribute :password
        validates :password, presence: true

        # @return [:enable, :disable, nil] the action you want to perform on the entity
        attribute :action
        validates :action, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [String] name of the entity
        attribute :name
        validates :name, presence: true, type: String

        # @return [:server, :service, nil] type of the entity
        attribute :type
        validates :type, inclusion: {:in=>[:server, :service], :message=>"%{value} needs to be :server, :service"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
