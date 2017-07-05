# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows the management of Foreman resources inside your Foreman server
      class Foreman < Base
        # @return [String] URL of Foreman server
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [String] Username on Foreman server
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] Password for user accessing Foreman server
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] The Foreman resource that the action will be performed on (e.g. organization, host)
        attribute :entity
        validates :entity, presence: true, type: String

        # @return [Hash] Parameters associated to the entity resource to set or edit in dictionary format (e.g. name, description)
        attribute :params
        validates :params, presence: true, type: Hash
      end
    end
  end
end
