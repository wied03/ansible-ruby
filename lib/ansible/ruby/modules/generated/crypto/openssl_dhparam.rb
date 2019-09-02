# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows one to (re)generate OpenSSL DH-params. This module uses file common arguments to specify generated file permissions.
      class Openssl_dhparam < Base
        # @return [:present, :absent, nil] Whether the parameters should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Size (in bits) of the generated DH-params
        attribute :size
        validates :size, type: Integer

        # @return [Symbol, nil] Should the parameters be regenerated even it it already exists
        attribute :force
        validates :force, type: Symbol

        # @return [String] Name of the file in which the generated parameters will be saved.
        attribute :path
        validates :path, presence: true, type: String
      end
    end
  end
end
