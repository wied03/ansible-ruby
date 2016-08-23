# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rds_param_group < Base
        # @return [String] Specifies whether the group should be present or absent.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Database parameter group identifier.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Database parameter group description. Only set when a new group is added.
        attribute :description
        validates :description, type: String

        # @return [String] The type of database for this group. Required for state=present.
        attribute :engine
        validates :engine, inclusion: {:in=>[:"aurora5.6", :"mariadb10.0", :"mysql5.1", :"mysql5.5", :"mysql5.6", :"oracle-ee-11.2", :"oracle-ee-12.1", :"oracle-se-11.2", :"oracle-se-12.1", :"oracle-se1-11.2", :"oracle-se1-12.1", :"postgres9.3", :"postgres9.4", :"sqlserver-ee-10.5", :"sqlserver-ee-11.0", :"sqlserver-ex-10.5", :"sqlserver-ex-11.0", :"sqlserver-ex-12.0", :"sqlserver-se-10.5", :"sqlserver-se-11.0", :"sqlserver-se-12.0", :"sqlserver-web-10.5", :"sqlserver-web-11.0", :"sqlserver-web-12.0"], :message=>"%{value} needs to be :aurora5.6, :mariadb10.0, :mysql5.1, :mysql5.5, :mysql5.6, :oracle-ee-11.2, :oracle-ee-12.1, :oracle-se-11.2, :oracle-se-12.1, :oracle-se1-11.2, :oracle-se1-12.1, :postgres9.3, :postgres9.4, :sqlserver-ee-10.5, :sqlserver-ee-11.0, :sqlserver-ex-10.5, :sqlserver-ex-11.0, :sqlserver-ex-12.0, :sqlserver-se-10.5, :sqlserver-se-11.0, :sqlserver-se-12.0, :sqlserver-web-10.5, :sqlserver-web-11.0, :sqlserver-web-12.0"}, allow_nil: true

        # @return [Object] Whether to apply the changes immediately, or after the next reboot of any associated instances.
        attribute :immediate

        # @return [Hash] Map of parameter names and values. Numeric values may be represented as K for kilo (1024), M for mega (1024^2), G for giga (1024^3), or T for tera (1024^4), and these values will be expanded into the appropriate number before being set in the parameter group.
        attribute :params
        validates :params, type: Hash
      end
    end
  end
end
