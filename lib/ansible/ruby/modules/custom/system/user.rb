# frozen_string_literal: true
# VALIDATED_CHECKSUM: lFD5LhRNp4fnZI7w1EMOHzNuMdBriWunm+Z3Tc2fY+I=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/system/user'

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
