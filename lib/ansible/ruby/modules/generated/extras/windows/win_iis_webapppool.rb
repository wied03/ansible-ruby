# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, Removes and configures a IIS Web Application Pool
      class Win_iis_webapppool < Base
        # @return [String] Names of application pool
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :stopped, :started, :restarted, nil] State of the binding
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :stopped, :started, :restarted], :message=>"%{value} needs to be :absent, :stopped, :started, :restarted"}, allow_nil: true

        # @return [String, nil] Application Pool attributes from string where attributes are seperated by a pipe and attribute name/values by colon Ex. "foo:1|bar:2"
        attribute :attributes
        validates :attributes, type: String
      end
    end
  end
end
