# frozen_string_literal: true
# VALIDATED_CHECKSUM: 1k2xSbSJRuPIByfZD6JPVMjSuT9mvoQGYZkX5bySbZo=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/copy'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Copy
        include Helpers::FileAttributes
      end
    end
  end
end
