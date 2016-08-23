# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Git < Base
        # @return [String] git, SSH, or HTTP(S) protocol address of the git repository.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] Absolute path of where the repository should be checked out to. This parameter is required, unless C(clone) is set to C(no) This change was made in version 1.8.3. Prior to this version, the C(dest) parameter was always required.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] What version of the repository to check out.  This can be the full 40-character I(SHA-1) hash, the literal string C(HEAD), a branch name, or a tag name.
        attribute :version
        validates :version, type: String

        # @return [String] if C(yes), adds the hostkey for the repo url if not already added. If ssh_opts contains "-o StrictHostKeyChecking=no", this parameter is ignored.
        attribute :accept_hostkey
        validates :accept_hostkey, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Creates a wrapper script and exports the path as GIT_SSH which git then automatically uses to override ssh arguments. An example value could be "-o StrictHostKeyChecking=no"
        attribute :ssh_opts
        validates :ssh_opts, type: String

        # @return [String] Specify an optional private key file to use for the checkout.
        attribute :key_file
        validates :key_file, type: String

        # @return [Object] Reference repository (see "git clone --reference ...")
        attribute :reference

        # @return [String] Name of the remote.
        attribute :remote
        validates :remote, type: String

        # @return [String] Add an additional refspec to be fetched. If version is set to a I(SHA-1) not reachable from any branch or tag, this option may be necessary to specify the ref containing the I(SHA-1). Uses the same syntax as the 'git fetch' command. An example value could be "refs/meta/config".
        attribute :refspec
        validates :refspec, type: String

        # @return [String] If C(yes), any modified files in the working repository will be discarded.  Prior to 0.7, this was always 'yes' and could not be disabled.  Prior to 1.9, the default was `yes`
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Create a shallow clone with a history truncated to the specified number or revisions. The minimum possible value is C(1), otherwise ignored. Needs I(git>=1.9.1) to work correctly.
        attribute :depth

        # @return [String] If C(no), do not clone the repository if it does not exist locally
        attribute :clone
        validates :clone, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] If C(no), do not retrieve new revisions from the origin repository
        attribute :update
        validates :update, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Path to git executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.
        attribute :executable

        # @return [String] if C(yes), repository will be created as a bare repo, otherwise it will be a standard repo with a workspace.
        attribute :bare
        validates :bare, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] if C(no), repository will be cloned without the --recursive option, skipping sub-modules.
        attribute :recursive
        validates :recursive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] if C(yes), submodules will track the latest commit on their master branch (or other branch specified in .gitmodules).  If C(no), submodules will be kept at the revision specified by the main project. This is equivalent to specifying the --remote flag to git submodule update.
        attribute :track_submodules
        validates :track_submodules, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] if C(yes), when cloning or checking out a C(version) verify the signature of a GPG signed commit. This requires C(git) version>=2.1.0 to be installed. The commit MUST be signed and the public key MUST be trusted in the GPG trustdb.
        attribute :verify_commit
        validates :verify_commit, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
