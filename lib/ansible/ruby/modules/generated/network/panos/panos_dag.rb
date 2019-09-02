# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a dynamic address group object in the firewall used for policy rules
      class Panos_dag < Base
        # @return [String] name of the dynamic address group
        attribute :dag_name
        validates :dag_name, presence: true, type: String

        # @return [String] dynamic filter user by the dynamic address group
        attribute :dag_filter
        validates :dag_filter, presence: true, type: String

        # @return [:yes, :no, nil] commit if changed
        attribute :commit
        validates :commit, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
