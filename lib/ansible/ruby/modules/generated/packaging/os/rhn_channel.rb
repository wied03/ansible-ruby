# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes Red Hat software channels.
      class Rhn_channel < Base
        # @return [String] Name of the software channel.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the system as it is known in RHN/Satellite.
        attribute :sysname
        validates :sysname, presence: true, type: String

        # @return [String, nil] Whether the channel should be present or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, type: String

        # @return [String] The full URL to the RHN/Satellite API.
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] RHN/Satellite login.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] RHN/Satellite password.
        attribute :password
        validates :password, presence: true, type: String
      end
    end
  end
end
