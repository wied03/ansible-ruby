# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_dns < Base
        # @return [Object] Brief description of the domain. Maximum length of 160 characters
        attribute :comment

        # @return [Object] Email address of the domain administrator
        attribute :email

        # @return [String] Domain name to create
        attribute :name
        validates :name, type: String

        # @return [String] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] Time to live of domain in seconds
        attribute :ttl
        validates :ttl, type: Fixnum
      end
    end
  end
end
