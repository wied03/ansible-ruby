# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to create, modify and delete Zabbix screens and associated graph data.
      class Zabbix_screen < Base
        # @return [Array<Hash>, Hash] List of screens to be created/updated/deleted(see example).,If the screen(s) already been added, the screen(s) name won't be updated.,When creating or updating screen(s), C(screen_name), C(host_group) are required.,When deleting screen(s), the C(screen_name) is required.,Option C(graphs_in_row) will limit columns of screen and make multiple rows (default 3),The available states are: C(present) (default) and C(absent). If the screen(s) already exists, and the state is not C(absent), the screen(s) will just be updated as needed.\r\n
        attribute :screens
        validates :screens, presence: true, type: TypeGeneric.new(Hash)
      end
    end
  end
end
