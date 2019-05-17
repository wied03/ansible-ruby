# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage firmware image sources on Cisco ACI fabrics.
      class Aci_firmware_source < Base
        # @return [String] The identifying name for the outside source of images, such as an HTTP or SCP server.
        attribute :source
        validates :source, presence: true, type: String

        # @return [Integer, nil] Polling interval in minutes.
        attribute :polling_interval
        validates :polling_interval, type: Integer

        # @return [:http, :local, :scp, :usbkey, nil] The Firmware download protocol.
        attribute :url_protocol
        validates :url_protocol, inclusion: {:in=>[:http, :local, :scp, :usbkey], :message=>"%{value} needs to be :http, :local, :scp, :usbkey"}, allow_nil: true

        # @return [String, nil] The firmware URL for the image(s) on the source.
        attribute :url
        validates :url, type: String

        # @return [Object, nil] The Firmware password or key string.
        attribute :url_password

        # @return [Object, nil] The username for the source.
        attribute :url_username

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
