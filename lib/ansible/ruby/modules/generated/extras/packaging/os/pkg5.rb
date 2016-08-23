# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pkg5 < Base
        # @return [Array] An FRMI of the package(s) to be installed/removed/updated.,Multiple packages may be specified, separated by C(,).
        attribute :name
        validates :name, presence: true, type: Array

        # @return [String] Whether to install (I(present), I(latest)), or remove (I(absent)) a package.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}, allow_nil: true

        # @return [Object] Accept any licences.
        attribute :accept_licenses
        validates :accept_licenses, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
