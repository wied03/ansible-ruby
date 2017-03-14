# frozen_string_literal: true
# see LICENSE.txt in project root
module Ansible
  module Ruby
    module Modules
      module Helpers
        module FileAttributes
          def self.included(base)
            # @return [String, nil] Which user should own the file
            base.attribute :owner
            base.validates :owner, type: String

            # @return [String, nil] Which group should own the file
            base.attribute :group
            base.validates :group, type: String

            # @return [String, nil] File mode, e.g. "u=rw,g=r"
            base.attribute :mode
            base.validates :mode, type: String

            base.attribute :setype
            base.validates :setype, type: String

            base.attribute :selevel
            base.validates :selevel, type: String
          end
        end
      end
    end
  end
end
