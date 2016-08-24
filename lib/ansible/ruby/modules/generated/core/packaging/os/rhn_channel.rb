# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rhn_channel < Base
        # @return [String] name of the software channel
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] name of the system as it is known in RHN/Satellite
        attribute :sysname
        validates :sysname, presence: true, type: String

        # @return [String, nil] whether the channel should be present or not
        attribute :state
        validates :state, type: String

        # @return [String] The full url to the RHN/Satellite api
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] RHN/Satellite user
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] the user's password
        attribute :password
        validates :password, presence: true, type: String
      end
    end
  end
end
