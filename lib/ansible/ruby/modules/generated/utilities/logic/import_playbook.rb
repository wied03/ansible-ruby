# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Includes a file with a list of plays to be executed.
      # Files with a list of plays can only be included at the top level. You cannot use this action inside a play.
      class Import_playbook < Base
        # @return [Object, nil] The name of the imported playbook is specified directly without any other option.
        attribute :free_form, original_name: 'free-form'
      end
    end
  end
end
