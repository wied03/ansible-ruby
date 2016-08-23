# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Jboss < Base
        # @return [String] The name of the deployment
        attribute :deployment
        validates :deployment, presence: true, type: String

        # @return [String] The remote path of the application ear or war to deploy
        attribute :src
        validates :src, type: String

        # @return [String] The location in the filesystem where the deployment scanner listens
        attribute :deploy_path
        validates :deploy_path, type: String

        # @return [String] Whether the application should be deployed or undeployed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
