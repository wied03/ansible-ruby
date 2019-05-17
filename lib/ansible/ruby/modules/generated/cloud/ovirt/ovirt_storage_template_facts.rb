# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV templates relate to a storage domain.
      class Ovirt_storage_template_facts < Base
        # @return [Symbol, nil] Flag which indicates whether to get unregistered templates which contain one or more disks which reside on a storage domain or diskless templates.
        attribute :unregistered
        validates :unregistered, type: Symbol

        # @return [Object, nil] Sets the maximum number of templates to return. If not specified all the templates are returned.
        attribute :max

        # @return [Object, nil] The storage domain name where the templates should be listed.
        attribute :storage_domain
      end
    end
  end
end
