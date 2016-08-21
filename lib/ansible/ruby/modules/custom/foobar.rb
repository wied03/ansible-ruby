require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Foobar < Base
        attr_accessor :src
        validates :src, presence: true
        attr_accessor :dest
        validates :dest, presence: true
      end
    end
  end
end
