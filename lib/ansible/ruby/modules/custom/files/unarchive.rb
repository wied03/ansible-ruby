# frozen_string_literal: true
# VALIDATED_CHECKSUM: yZbGN4O7Xt3nEhkX3dtGsqhX1eQGSPvpJJRVJdsroIg=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/unarchive'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Unarchive
        include Helpers::FileAttributes
      end
    end
  end
end
