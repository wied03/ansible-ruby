# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # creates, updates, deletes beanstalk applications if app_name is provided
      class Aws_elasticbeanstalk_app < Base
        # @return [String, nil] name of the beanstalk application you wish to manage
        attribute :app_name
        validates :app_name, type: String

        # @return [String, nil] the description of the application
        attribute :description
        validates :description, type: String

        # @return [:absent, :present, nil] whether to ensure the application is present or absent
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Boolean, nil] when set to true, running environments will be terminated before deleting the application
        attribute :terminate_by_force
        validates :terminate_by_force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
