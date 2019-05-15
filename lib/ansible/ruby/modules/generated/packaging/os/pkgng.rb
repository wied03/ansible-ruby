# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage binary packages for FreeBSD using 'pkgng' which is available in versions after 9.0.
      class Pkgng < Base
        # @return [Array<String>, String] Name or list of names of packages to install/remove.
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :latest, :absent, nil] State of the package.,Note: "latest" added in 2.7
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}, allow_nil: true

        # @return [Boolean, nil] Use local package base instead of fetching an updated one.
        attribute :cached
        validates :cached, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] A comma-separated list of keyvalue-pairs of the form C(<+/-/:><key>[=<value>]). A C(+) denotes adding an annotation, a C(-) denotes removing an annotation, and C(:) denotes modifying an annotation. If setting or modifying annotations, a value must be provided.
        attribute :annotation
        validates :annotation, type: TypeGeneric.new(String)

        # @return [Object, nil] For pkgng versions before 1.1.4, specify packagesite to use for downloading packages. If not specified, use settings from C(/usr/local/etc/pkg.conf).,For newer pkgng versions, specify a the name of a repository configured in C(/usr/local/etc/pkg/repos).
        attribute :pkgsite

        # @return [Object, nil] For pkgng versions 1.5 and later, pkg will install all packages within the specified root directory.,Can not be used together with I(chroot) or I(jail) options.
        attribute :rootdir

        # @return [Object, nil] Pkg will chroot in the specified environment.,Can not be used together with I(rootdir) or I(jail) options.
        attribute :chroot

        # @return [Object, nil] Pkg will execute in the given jail name or id.,Can not be used together with I(chroot) or I(rootdir) options.
        attribute :jail

        # @return [Boolean, nil] Remove automatically installed packages which are no longer needed.
        attribute :autoremove
        validates :autoremove, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
