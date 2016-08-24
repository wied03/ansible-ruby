# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ipify_facts < Base
        # @return [String, nil] URL of the ipify.org API service.,C(?format=json) will be appended per default.
        attribute :api_url
        validates :api_url, type: String
      end
    end
  end
end
