# frozen_string_literal: true
# VALIDATED_CHECKSUM: X05FRgPWIlGqAEyi5DWPxwkr3xIRH1z8685tRYJ3+rY=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/system/user'

module Ansible
  module Ruby
    module Modules
      class User
        # Until Ansible 2.3, groups has to be a CSV
        def to_h
          result = super
          user = result[:user]
          groups = user[:groups]
          user[:groups] = groups.join ',' if groups
          result
        end
      end
    end
  end
end
