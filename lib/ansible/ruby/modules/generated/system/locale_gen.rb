# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages locales by editing /etc/locale.gen and invoking locale-gen.
      class Locale_gen < Base
        # @return [String] Name and encoding of the locale, such as "en_GB.UTF-8".
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Whether the locale shall be present.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
