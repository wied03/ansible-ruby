# frozen_string_literal: true
# VALIDATED_CHECKSUM: aIM1dczpLFU2xMaIijCkTmi54/yEPZKaE3hO5Lja5bo=
require 'ansible/ruby/modules/generated/packaging/language/pear'

module Ansible
  module Ruby
    module Modules
      class Pear
        def to_h
          from_super = super
          pear_module = from_super[:pear]
          # Pear seems to insist on things being a CSV
          pear_module[:name] = pear_module[:name].join(',')
          from_super
        end
      end
    end
  end
end
