# frozen_string_literal: true

# VALIDATED_CHECKSUM: WzdFTS+LyBFdjn8ym5RktQ0UEXZTEQOhKhx6JCFMT4I=

# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/utilities/helper/meta'
require 'ansible/ruby/modules/free_form'

module Ansible
  module Ruby
    module Modules
      class Meta
        include FreeForm

        # we want this to be a symbol but the FreeForm module will expect a string, so clear out its validation
        remove_existing_validations :free_form
        validates :free_form, presence: true, expression_inclusion: { in: %i[noop flush_handlers refresh_inventory clear_facts clear_host_errors end_play], message: '%{value} needs to be :noop, :flush_handlers, :refresh_inventory, :clear_facts, :clear_host_errors, :end_play' }
      end
    end
  end
end
