# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts from ZFS dataset properties.
      class Zfs_facts < Base
        # @return [String] ZFS dataset name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifies if properties for any children should be recursively displayed.
        attribute :recurse
        validates :recurse, type: String

        # @return [String, nil] Specifies if property values should be displayed in machine friendly format.
        attribute :parsable
        validates :parsable, type: String

        # @return [String, nil] Specifies which dataset properties should be queried in comma-separated format. For more information about dataset properties, check zfs(1M) man page.
        attribute :properties
        validates :properties, type: String

        # @return [:all, :filesystem, :volume, :snapshot, :bookmark, nil] Specifies which datasets types to display. Multiple values have to be provided in comma-separated form.
        attribute :type
        validates :type, inclusion: {:in=>[:all, :filesystem, :volume, :snapshot, :bookmark], :message=>"%{value} needs to be :all, :filesystem, :volume, :snapshot, :bookmark"}, allow_nil: true

        # @return [Object, nil] Specifiies recurion depth.
        attribute :depth
      end
    end
  end
end
