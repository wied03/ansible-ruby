# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a security profile group
      class Panos_pg < Base
        # @return [String] name of the security profile group
        attribute :pg_name
        validates :pg_name, presence: true, type: String

        # @return [Object, nil] name of the data filtering profile
        attribute :data_filtering

        # @return [Object, nil] name of the file blocking profile
        attribute :file_blocking

        # @return [String, nil] name of the spyware profile
        attribute :spyware
        validates :spyware, type: String

        # @return [Object, nil] name of the url filtering profile
        attribute :url_filtering

        # @return [String, nil] name of the anti-virus profile
        attribute :virus
        validates :virus, type: String

        # @return [String, nil] name of the vulnerability profile
        attribute :vulnerability
        validates :vulnerability, type: String

        # @return [Object, nil] name of the wildfire analysis profile
        attribute :wildfire

        # @return [:yes, :no, nil] commit if changed
        attribute :commit
        validates :commit, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
