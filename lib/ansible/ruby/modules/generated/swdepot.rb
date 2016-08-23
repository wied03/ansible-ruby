# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Swdepot < Base
        # @return [String] package name.
        attribute :name
        validates :name, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] whether to install (C(present), C(latest)), or remove (C(absent)) a package.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}

        # @return [String] The source repository from which install or upgrade a package.
        attribute :depot
        validates :depot, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true
      end
    end
  end
end
