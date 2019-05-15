# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # create/delete/dump zabbix template
      class Zabbix_template < Base
        # @return [String] Name of zabbix template
        attribute :template_name
        validates :template_name, presence: true, type: String

        # @return [String, Hash, nil] JSON dump of template to import
        attribute :template_json
        validates :template_json, type: MultipleTypes.new(String, Hash)

        # @return [Array<String>, String, nil] List of template groups to create or delete.
        attribute :template_groups
        validates :template_groups, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of templates linked to the template.
        attribute :link_templates
        validates :link_templates, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of templates cleared from the template.,see templates_clear in https://www.zabbix.com/documentation/3.0/manual/api/reference/template/update
        attribute :clear_templates
        validates :clear_templates, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] List of templates macro
        attribute :macros
        validates :macros, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, :dump, nil] state present create/update template, absent delete template
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :dump], :message=>"%{value} needs to be :present, :absent, :dump"}, allow_nil: true
      end
    end
  end
end
