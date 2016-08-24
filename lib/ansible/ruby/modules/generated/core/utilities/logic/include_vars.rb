# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Include_vars < Base
        # @return [Object] The file name from which variables should be loaded, if called from a role it will look for the file in vars/ subdirectory of the role, otherwise the path would be relative to playbook. An absolute path can also be provided.
        attribute :free_form, original_name: 'free-form'
        validates :free_form, presence: true
      end
    end
  end
end
