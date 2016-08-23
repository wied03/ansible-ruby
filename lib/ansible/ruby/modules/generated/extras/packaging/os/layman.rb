# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Layman < Base
        # @return [String] The overlay id to install, synchronize, or uninstall. Use 'ALL' to sync all of the installed overlays (can be used only when C(state=updated)).
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] An URL of the alternative overlays list that defines the overlay to install. This list will be fetched and saved under C(${overlay_defs})/${name}.xml), where C(overlay_defs) is readed from the Layman's configuration.
        attribute :list_url
        validates :list_url, type: String

        # @return [String] Whether to install (C(present)), sync (C(updated)), or uninstall (C(absent)) the overlay.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :updated], :message=>"%{value} needs to be :present, :absent, :updated"}, allow_nil: true

        # @return [String] If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.  Prior to 1.9.3 the code defaulted to C(no).
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
