# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify global configuration settings of a FreeIPA Server.
      class Ipa_config < Base
        # @return [String, nil] Default shell for new users.
        attribute :ipadefaultloginshell
        validates :ipadefaultloginshell, type: String

        # @return [String, nil] Default e-mail domain for new users.
        attribute :ipadefaultemaildomain
        validates :ipadefaultemaildomain, type: String
      end
    end
  end
end
