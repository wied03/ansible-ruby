# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module works like M(fetch). It is used for fetching a base64- encoded blob containing the data in a remote file.
      class Slurp < Base
        # @return [String] The file on the remote system to fetch. This I(must) be a file, not a directory.
        attribute :src
        validates :src, presence: true, type: String
      end
    end
  end
end
