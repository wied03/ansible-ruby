module Ansible
  module Ruby
    module Modules
      class Foobar < BaseModel
        attribute :src, required: true
        attribute :dest, required: true
      end
    end
  end
end

