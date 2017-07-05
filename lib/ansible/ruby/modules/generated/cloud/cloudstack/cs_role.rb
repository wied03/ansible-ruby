# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, delete user roles.
      class Cs_role < Base
        # @return [String] Name of the role.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] ID of the role.,If provided, C(id) is used as key.
        attribute :id
        validates :id, type: String

        # @return [:User, :DomainAdmin, :ResourceAdmin, :Admin, nil] Type of the role.,Only considered for creation.
        attribute :role_type
        validates :role_type, inclusion: {:in=>[:User, :DomainAdmin, :ResourceAdmin, :Admin], :message=>"%{value} needs to be :User, :DomainAdmin, :ResourceAdmin, :Admin"}, allow_nil: true

        # @return [Object, nil] Description of the role.
        attribute :description

        # @return [:present, :absent, nil] State of the role.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
