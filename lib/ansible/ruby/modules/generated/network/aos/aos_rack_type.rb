# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apstra AOS Rack Type module let you manage your Rack Type easily. You can create create and delete Rack Type by Name, ID or by using a JSON File. This module is idempotent and support the I(check) mode. It's using the AOS REST API.
      class Aos_rack_type < Base
        # @return [String] An existing AOS session as obtained by M(aos_login) module.
        attribute :session
        validates :session, presence: true, type: String

        # @return [String, nil] Name of the Rack Type to manage. Only one of I(name), I(id) or I(content) can be set.
        attribute :name
        validates :name, type: String

        # @return [String, nil] AOS Id of the Rack Type to manage (can't be used to create a new Rack Type), Only one of I(name), I(id) or I(content) can be set.
        attribute :id
        validates :id, type: String

        # @return [String, nil] Datastructure of the Rack Type to create. The data can be in YAML / JSON or directly a variable. It's the same datastructure that is returned on success in I(value).
        attribute :content
        validates :content, type: String

        # @return [:present, :absent, nil] Indicate what is the expected state of the Rack Type (present or not).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
