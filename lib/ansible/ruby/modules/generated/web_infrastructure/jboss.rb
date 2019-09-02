# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Deploy applications to JBoss standalone using the filesystem
      class Jboss < Base
        # @return [String] The name of the deployment
        attribute :deployment
        validates :deployment, presence: true, type: String

        # @return [String, nil] The remote path of the application ear or war to deploy
        attribute :src
        validates :src, type: String

        # @return [String, nil] The location in the filesystem where the deployment scanner listens
        attribute :deploy_path
        validates :deploy_path, type: String

        # @return [:present, :absent, nil] Whether the application should be deployed or undeployed
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
