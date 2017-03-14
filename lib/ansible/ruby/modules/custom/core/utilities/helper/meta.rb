# frozen_string_literal: true
# VALIDATED_CHECKSUM: Isys/3jd2iKpxQYjj30pLNba1cQOHiPhSXIiL4W9Ays=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/utilities/helper/meta'
require 'ansible/ruby/modules/free_form'

module Ansible
  module Ruby
    module Modules
      class Meta
        include FreeForm

        # we want this to be a symbol but the FreeForm module will expect a string, so clear out its validation
        remove_existing_validations :free_form
        validates :free_form, presence: true, inclusion: { in: [:noop, :flush_handlers, :refresh_inventory, :clear_facts, :clear_host_errors, :end_play], message: '%{value} needs to be :noop, :flush_handlers, :refresh_inventory, :clear_facts, :clear_host_errors, :end_play' }
      end
    end
  end
end
