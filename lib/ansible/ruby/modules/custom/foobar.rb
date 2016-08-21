module Ansible
  module Ruby
    module Modules
      class Foobar < BasicUnit
        attribute :src, required: true
        attribute :dest, required: true
      end
    end
  end
end

