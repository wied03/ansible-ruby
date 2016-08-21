require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Foobar < Base
        attribute :src
        validates :src, presence: true
        attribute :dest
        validates :dest, presence: true
      end
    end
  end
end
