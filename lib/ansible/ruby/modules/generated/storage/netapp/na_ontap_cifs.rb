# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy or modify(path) cifs-share on ONTAP
      class Na_ontap_cifs < Base
        # @return [String, nil] The file system path that is shared through this CIFS share. The path is the full, user visible path relative to the vserver root, and it might be crossing junction mount points. The path is in UTF8 and uses forward slash as directory separator
        attribute :path
        validates :path, type: String

        # @return [String] Vserver containing the CIFS share.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [String] The name of the CIFS share. The CIFS share name is a UTF-8 string with the following characters being illegal; control characters from 0x00 to 0x1F, both inclusive, 0x22 (double quotes)
        attribute :share_name
        validates :share_name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the specified CIFS share should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
