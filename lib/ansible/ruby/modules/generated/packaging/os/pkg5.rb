# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # IPS packages are the native packages in Solaris 11 and higher.
      class Pkg5 < Base
        # @return [Array<String>, String] An FRMI of the package(s) to be installed/removed/updated.,Multiple packages may be specified, separated by C(,).
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:absent, :latest, :present, nil] Whether to install (I(present), I(latest)), or remove (I(absent)) a package.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :latest, :present], :message=>"%{value} needs to be :absent, :latest, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Accept any licences.
        attribute :accept_licenses
        validates :accept_licenses, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
