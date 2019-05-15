# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Import file on PAN-OS device
      class Panos_import < Base
        # @return [String, nil] Category of file uploaded. The default is software.,See API > Import section of the API reference for category options.
        attribute :category
        validates :category, type: String

        # @return [String, nil] Location of the file to import into device.
        attribute :file
        validates :file, type: String

        # @return [Object, nil] URL of the file that will be imported to device.
        attribute :url

        # @return [Boolean, nil] If C(no), SSL certificates will not be validated. Disabling certificate validation is not recommended.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
