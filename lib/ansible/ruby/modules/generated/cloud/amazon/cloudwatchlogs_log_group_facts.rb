# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Lists the specified log groups. You can list all your log groups or filter the results by prefix.
      class Cloudwatchlogs_log_group_facts < Base
        # @return [String, nil] The name or prefix of the log group to filter by.
        attribute :log_group_name
        validates :log_group_name, type: String
      end
    end
  end
end
