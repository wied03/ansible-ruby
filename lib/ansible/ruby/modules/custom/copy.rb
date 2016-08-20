module Ansible
  module Ruby
    module Modules
      module Custom
        class Copy < BasicUnit
          attribute :src, required: true
          attribute :dest, required: true
        end
      end
    end
  end
end
