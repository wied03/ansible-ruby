# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Locale_gen < Base
        # @return [String] Name and encoding of the locale, such as "en_GB.UTF-8".
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Whether the locale shall be present.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
