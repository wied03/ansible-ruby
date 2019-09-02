# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and clear (delete) a silence entries via the Sensu API for subscriptions and checks.
      class Sensu_silence < Base
        # @return [String, nil] Specifies the check which the silence entry applies to.
        attribute :check
        validates :check, type: String

        # @return [String, nil] Specifies the entity responsible for this entry.
        attribute :creator
        validates :creator, type: String

        # @return [Object, nil] If specified, the silence entry will be automatically cleared after this number of seconds.
        attribute :expire

        # @return [Symbol, nil] If specified as true, the silence entry will be automatically cleared once the condition it is silencing is resolved.
        attribute :expire_on_resolve
        validates :expire_on_resolve, type: Symbol

        # @return [String, nil] If specified, this free-form string is used to provide context or rationale for the reason this silence entry was created.
        attribute :reason
        validates :reason, type: String

        # @return [:present, :absent] Specifies to create or clear (delete) a silence entry via the Sensu API
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object] Specifies the subscription which the silence entry applies to.,To create a silence entry for a client prepend C(client:) to client name. Example - C(client:server1.example.dev)
        attribute :subscription
        validates :subscription, presence: true

        # @return [String, nil] Specifies the URL of the Sensu monitoring host server.
        attribute :url
        validates :url, type: String
      end
    end
  end
end
