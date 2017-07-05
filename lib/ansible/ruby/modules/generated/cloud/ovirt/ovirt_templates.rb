# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage virtual machine templates in oVirt.
      class Ovirt_templates < Base
        # @return [String] Name of the the template to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :exported, :imported, nil] Should the template be present/absent/exported/imported
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :exported, :imported], :message=>"%{value} needs to be :present, :absent, :exported, :imported"}, allow_nil: true

        # @return [String, nil] Name of the VM, which will be used to create template.
        attribute :vm
        validates :vm, type: String

        # @return [String, nil] Description of the template.
        attribute :description
        validates :description, type: String

        # @return [String, nil] CPU profile to be set to template.
        attribute :cpu_profile
        validates :cpu_profile, type: String

        # @return [String, nil] Name of the cluster, where template should be created/imported.
        attribute :cluster
        validates :cluster, type: String

        # @return [Object, nil] When C(state) is I(exported) this parameter indicates if the existing templates with the same name should be overwritten.
        attribute :exclusive

        # @return [Object, nil] When C(state) is I(exported) or I(imported) this parameter specifies the name of the export storage domain.
        attribute :export_domain

        # @return [Object, nil] When C(state) is I(imported) this parameter specifies the name of the image provider to be used.
        attribute :image_provider

        # @return [Object, nil] When C(state) is I(imported) and C(image_provider) is used this parameter specifies the name of disk to be imported as template.
        attribute :image_disk

        # @return [Object, nil] When C(state) is I(imported) this parameter specifies the name of the destination data storage domain.
        attribute :storage_domain

        # @return [Boolean, nil] If I(True) then the permissions of the VM (only the direct ones, not the inherited ones) will be copied to the created template.,This parameter is used only when C(state) I(present).
        attribute :clone_permissions
        validates :clone_permissions, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
