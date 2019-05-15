# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get info about available Python requirements on the target host, including listing required libraries and gathering versions.
      class Python_requirements_facts < Base
        # @return [Array<String>, String, nil] A list of version-likes or module names to check for installation. Supported operators: <, >, <=, >=, or ==. The bare module name like I(ansible), the module with a specific version like I(boto3==1.6.1), or a partial version like I(requests>2) are all valid specifications.\r\n
        attribute :dependencies
        validates :dependencies, type: TypeGeneric.new(String)
      end
    end
  end
end
