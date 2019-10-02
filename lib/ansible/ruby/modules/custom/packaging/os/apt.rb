# frozen_string_literal: true
# VALIDATED_CHECKSUM: 4t8xwzQpe7ap54uEob4z4MEmLw0vgiYFg0M1S10DyGo=
require 'ansible/ruby/modules/generated/packaging/os/apt'

module Ansible
  module Ruby
    module Modules
      class Apt
        # Can either be a list or a single item
        remove_existing_validations :name
      end
    end
  end
end
