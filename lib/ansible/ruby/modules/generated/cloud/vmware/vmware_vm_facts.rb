# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Return basic facts pertaining to a vSphere virtual machine guest.
      # Cluster name as fact is added in version 2.7.
      class Vmware_vm_facts < Base
        # @return [:all, :vm, :template, nil] If set to C(vm), then facts are gathered for virtual machines only.,If set to C(template), then facts are gathered for virtual machine templates only.,If set to C(all), then facts are gathered for all virtual machines and virtual machine templates.
        attribute :vm_type
        validates :vm_type, inclusion: {:in=>[:all, :vm, :template], :message=>"%{value} needs to be :all, :vm, :template"}, allow_nil: true
      end
    end
  end
end
