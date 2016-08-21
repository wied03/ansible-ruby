require 'ansible/ruby/basic_unit'

module Ansible
  module Ruby
    module Modules
      class Base < BasicUnit
        def to_h
          {
            self.class.name.split('::').last.downcase => super
          }
        end
      end
    end
  end
end
