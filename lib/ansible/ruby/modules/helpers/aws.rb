# frozen_string_literal: true
# see LICENSE.txt in project root
module Ansible
  module Ruby
    module Modules
      module Helpers
        # For some of the AWS modules, we don't detect the region attribute
        module Aws
          def self.included(base)
            base.attribute :region
            base.validates :region, type: String, presence: true
          end
        end
      end
    end
  end
end
