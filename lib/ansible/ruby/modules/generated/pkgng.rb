# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pkgng < Base
        # @return [Array<String>] name of package to install/remove
        attribute :name, flat_array: true
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [String] state of the package
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] use local package base or try to fetch an updated one
        attribute :cached
        validates :cached, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] a comma-separated list of keyvalue-pairs of the form <+/-/:><key>[=<value>]. A '+' denotes adding an annotation, a '-' denotes removing an annotation, and ':' denotes modifying an annotation. If setting or modifying annotations, a value must be provided.
        attribute :annotation
        validates :annotation, type: String

        # @return [Object] for pkgng versions before 1.1.4, specify packagesite to use for downloading packages, if not specified, use settings from /usr/local/etc/pkg.conf for newer pkgng versions, specify a the name of a repository configured in /usr/local/etc/pkg/repos
        attribute :pkgsite

        # @return [Object] for pkgng versions 1.5 and later, pkg will install all packages within the specified root directory,can not be used together with 'chroot' option
        attribute :rootdir

        # @return [Object] pkg will chroot in the specified environment,can not be used together with 'rootdir' option
        attribute :chroot
      end
    end
  end
end