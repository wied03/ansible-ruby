# frozen_string_literal: true

# see LICENSE.txt in project root
module Ansible
  module Ruby
    module Modules
      module Helpers
        module FileAttributes
          def self.included(base)
            base.remove_existing_validations :owner
            # @return [String, nil] Which user should own the file
            base.attribute :owner
            base.validates :owner, type: String

            base.remove_existing_validations :group
            # @return [String, nil] Which group should own the file
            base.attribute :group
            base.validates :group, type: String

            base.remove_existing_validations :mode
            # @return [String, nil] File mode, e.g. "u=rw,g=r"
            base.attribute :mode
            base.validates :mode, type: String

            base.remove_existing_validations :setype
            base.attribute :setype
            base.validates :setype, type: String

            base.remove_existing_validations :selevel
            base.attribute :selevel
            base.validates :selevel, type: String

            base.remove_existing_validations :validate
            base.attribute :validate
            base.validates :validate, type: String
          end
        end
      end
    end
  end
end
