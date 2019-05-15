# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage groups in oVirt/RHV
      class Ovirt_group < Base
        # @return [String] Name of the group to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the group be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Authorization provider of the group. In previous versions of oVirt/RHV known as domain.
        attribute :authz_name
        validates :authz_name, presence: true

        # @return [Array<String>, String, nil] Namespace of the authorization provider, where group resides.
        attribute :namespace
        validates :namespace, type: TypeGeneric.new(String)
      end
    end
  end
end
