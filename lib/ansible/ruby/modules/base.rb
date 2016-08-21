require 'ansible/ruby/base_model'

module Ansible
  module Ruby
    module Modules
      class Base < BaseModel
        def to_h
          {
            self.class.name.split('::').last.downcase => super
          }
        end
      end
    end
  end
end
