# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used for updating the password of a user.
      # This module is useful for setting up admin password for Controller bootstrap.
      class Avi_useraccount < Base
        # @return [String, nil] Old password for update password or default password for bootstrap.
        attribute :old_password
        validates :old_password, type: String
      end
    end
  end
end
