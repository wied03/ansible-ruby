# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows users to add or remove flatpaks.
      # See the M(flatpak_remote) module for managing flatpak remotes.
      class Flatpak < Base
        # @return [String, nil] The path to the C(flatpak) executable to use.,By default, this module looks for the C(flatpak) executable on the path.
        attribute :executable
        validates :executable, type: String

        # @return [:system, :user, nil] The installation method to use.,Defines if the I(flatpak) is supposed to be installed globally for the whole C(system) or only for the current C(user).
        attribute :method
        validates :method, inclusion: {:in=>[:system, :user], :message=>"%{value} needs to be :system, :user"}, allow_nil: true

        # @return [String] The name of the flatpak to manage.,When used with I(state=present), I(name) can be specified as an C(http(s)) URL to a C(flatpakref) file or the unique reverse DNS name that identifies a flatpak.,When suppying a reverse DNS name, you can use the I(remote) option to specify on what remote to look for the flatpak. An example for a reverse DNS name is C(org.gnome.gedit).,When used with I(state=absent), it is recommended to specify the name in the reverse DNS format.,When supplying an C(http(s)) URL with I(state=absent), the module will try to match the installed flatpak based on the name of the flatpakref to remove it. However, there is no guarantee that the names of the flatpakref file and the reverse DNS name of the installed flatpak do match.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The flatpak remote (repository) to install the flatpak from.,By default, C(flathub) is assumed, but you do need to add the flathub flatpak_remote before you can use this.,See the M(flatpak_remote) module for managing flatpak remotes.
        attribute :remote
        validates :remote, type: String

        # @return [:absent, :present, nil] Indicates the desired package state.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
