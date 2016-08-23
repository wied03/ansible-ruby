# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mysql_db < Base
        # @return [String] name of the database to add or remove,name=all May only be provided if I(state) is C(dump) or C(import).,if name=all Works like --all-databases option for mysqldump (Added in 2.0)
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The database state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :dump, :import], :message=>"%{value} needs to be :present, :absent, :dump, :import"}, allow_nil: true

        # @return [Object] Collation mode (sorting). This only applies to new table/databases and does not update existing ones, this is a limitation of MySQL.
        attribute :collation

        # @return [Object] Encoding mode to use, examples include C(utf8) or C(latin1_swedish_ci)
        attribute :encoding

        # @return [String] Location, on the remote host, of the dump file to read from or write to. Uncompressed SQL files (C(.sql)) as well as bzip2 (C(.bz2)), gzip (C(.gz)) and xz (Added in 2.0) compressed files are supported.
        attribute :target
        validates :target, type: String

        # @return [Object] Execute the dump in a single transaction
        attribute :single_transaction

        # @return [TrueClass] Option used for dumping large tables
        attribute :quick
        validates :quick, type: TrueClass
      end
    end
  end
end
