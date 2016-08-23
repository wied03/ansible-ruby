# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pkgutil < Base
        # @return [Object] Package name, e.g. (C(CSWnrpe))
        attribute :name
        validates :name, presence: true

        # @return [Object] Specifies the repository path to install the package from.,Its global definition is done in C(/etc/opt/csw/pkgutil.conf).
        attribute :site

        # @return [Object] Whether to install (C(present)), or remove (C(absent)) a package.,The upgrade (C(latest)) operation will update/install the package to the latest version available.,Note: The module has a limitation that (C(latest)) only works for one package, not lists of them.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}

        # @return [Object] If you want to refresh your catalog from the mirror, set this to (C(yes)).
        attribute :update_catalog
      end
    end
  end
end
