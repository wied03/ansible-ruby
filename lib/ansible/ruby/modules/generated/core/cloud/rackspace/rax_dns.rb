# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage domains on Rackspace Cloud DNS
      class Rax_dns < Base
        # @return [Object, nil] Brief description of the domain. Maximum length of 160 characters
        attribute :comment

        # @return [Object, nil] Email address of the domain administrator
        attribute :email

        # @return [String, nil] Domain name to create
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Time to live of domain in seconds
        attribute :ttl
        validates :ttl, type: Integer
      end
    end
  end
end
