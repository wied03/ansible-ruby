# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages CSW packages (SVR4 format) on Solaris 10 and 11.
      # These were the native packages on Solaris <= 10 and are available as a legacy feature in Solaris 11.
      # Pkgutil is an advanced packaging system, which resolves dependency on installation. It is designed for CSW packages.
      class Pkgutil < Base
        # @return [Object] Package name, e.g. (C(CSWnrpe))
        attribute :name
        validates :name, presence: true

        # @return [Object, nil] Specifies the repository path to install the package from.,Its global definition is done in C(/etc/opt/csw/pkgutil.conf).
        attribute :site

        # @return [:present, :absent, :latest] Whether to install (C(present)), or remove (C(absent)) a package.,The upgrade (C(latest)) operation will update/install the package to the latest version available.,Note: The module has a limitation that (C(latest)) only works for one package, not lists of them.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}

        # @return [Boolean, nil] If you want to refresh your catalog from the mirror, set this to (C(yes)).
        attribute :update_catalog
        validates :update_catalog, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
