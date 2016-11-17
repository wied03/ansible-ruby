# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about all installed images on SmartOS. Facts will be inserted to the ansible_facts key.
      class Smartos_image_facts < Base
        # @return [Object, nil] Criteria for selecting image. Can be any value from image manifest and 'published_date', 'published', 'source', 'clones', and 'size'. More informaton can be found at U(https://smartos.org/man/1m/imgadm) under 'imgadm list'.
        attribute :filters
      end
    end
  end
end
