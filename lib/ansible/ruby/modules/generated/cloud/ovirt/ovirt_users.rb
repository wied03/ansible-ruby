# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage users in oVirt.
      class Ovirt_users < Base
        # @return [Object] Name of the the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.
        attribute :name
        validates :name, presence: true

        # @return [:present, :absent, nil] Should the user be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Authorization provider of the user. In previous versions of oVirt known as domain.
        attribute :authz_name
        validates :authz_name, presence: true
      end
    end
  end
end
