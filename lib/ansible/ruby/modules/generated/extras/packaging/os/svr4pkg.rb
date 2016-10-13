# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SVR4 packages on Solaris 10 and 11.
      # These were the native packages on Solaris <= 10 and are available as a legacy feature in Solaris 11.
      # Note that this is a very basic packaging system. It will not enforce dependencies on install or remove.
      class Svr4pkg < Base
        # @return [String] Package name, e.g. C(SUNWcsr)
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent] Whether to install (C(present)), or remove (C(absent)) a package.,If the package is to be installed, then I(src) is required.,The SVR4 package system doesn't provide an upgrade operation. You need to uninstall the old, then install the new package.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] Specifies the location to install the package from. Required when C(state=present).,Can be any path acceptable to the C(pkgadd) command's C(-d) option. e.g.: C(somefile.pkg), C(/dir/with/pkgs), C(http:/server/mypkgs.pkg).,If using a file or directory, they must already be accessible by the host. See the M(copy) module for a way to get them there.
        attribute :src
        validates :src, type: String

        # @return [Object, nil] HTTP[s] proxy to be used if C(src) is a URL.
        attribute :proxy

        # @return [String, nil] Specifies the location of a response file to be used if package expects input on install. (added in Ansible 1.4)
        attribute :response_file
        validates :response_file, type: String

        # @return [:current, :all, nil] Whether to install the package only in the current zone, or install it into all zones.,The installation into all zones works only if you are working with the global zone.
        attribute :zone
        validates :zone, inclusion: {:in=>[:current, :all], :message=>"%{value} needs to be :current, :all"}, allow_nil: true

        # @return [:true, :false, nil] Install/Remove category instead of a single package.
        attribute :category
        validates :category, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true
      end
    end
  end
end
