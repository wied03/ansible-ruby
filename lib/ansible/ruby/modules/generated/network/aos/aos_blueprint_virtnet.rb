# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apstra AOS Blueprint Virtual Network module let you manage your Virtual Network easily. You can create access, define and delete Virtual Network by name or by using a JSON / Yaml file. This module is idempotent and support the I(check) mode. It's using the AOS REST API.
      class Aos_blueprint_virtnet < Base
        # @return [String] An existing AOS session as obtained by M(aos_login) module.
        attribute :session
        validates :session, presence: true, type: String

        # @return [String] Blueprint Name or Id as defined in AOS.
        attribute :blueprint
        validates :blueprint, presence: true, type: String

        # @return [String, nil] Name of Virtual Network as part of the Blueprint.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Datastructure of the Virtual Network to manage. The data can be in YAML / JSON or directly a variable. It's the same datastructure that is returned on success in I(value).
        attribute :content
        validates :content, type: String

        # @return [:present, :absent, nil] Indicate what is the expected state of the Virtual Network (present or not).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
