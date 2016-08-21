require 'ansible/ruby/models/base_model'

module Ansible
  module Ruby
    module Modules
      class Base < Models::BaseModel
        def to_h
          {
            self.class.name.split('::').last.downcase.to_sym => super
          }
        end
      end
    end
  end
end
