# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage groups in oVirt
      class Ovirt_groups < Base
        # @return [Object] Name of the the group to manage.
        attribute :name
        validates :name, presence: true

        # @return [:present, :absent, nil] Should the group be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Authorization provider of the group. In previous versions of oVirt known as domain.
        attribute :authz_name
        validates :authz_name, presence: true

        # @return [Object, nil] Namespace of the authorization provider, where group resides.
        attribute :namespace
      end
    end
  end
end
