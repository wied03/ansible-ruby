# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and delete an IPA service using IPA API
      class Ipa_service < Base
        # @return [Object] principal of the service,Can not be changed as it is the unique identifier.
        attribute :krbcanonicalname
        validates :krbcanonicalname, presence: true

        # @return [Object, nil] defines the list of 'ManagedBy' hosts
        attribute :hosts

        # @return [Symbol, nil] Force principal name even if host is not in DNS.
        attribute :force
        validates :force, type: Symbol

        # @return [:present, :absent, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
