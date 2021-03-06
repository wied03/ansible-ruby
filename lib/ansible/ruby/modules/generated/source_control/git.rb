# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage I(git) checkouts of repositories to deploy files or software.
      class Git < Base
        # @return [String] git, SSH, or HTTP(S) protocol address of the git repository.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] The path of where the repository should be checked out. This parameter is required, unless C(clone) is set to C(no).
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] What version of the repository to check out.  This can be the literal string C(HEAD), a branch name, a tag name. It can also be a I(SHA-1) hash, in which case C(refspec) needs to be specified if the given revision is not already available.
        attribute :version
        validates :version, type: String

        # @return [:yes, :no, nil] if C(yes), ensure that "-o StrictHostKeyChecking=no" is present as an ssh option.
        attribute :accept_hostkey
        validates :accept_hostkey, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Creates a wrapper script and exports the path as GIT_SSH which git then automatically uses to override ssh arguments. An example value could be "-o StrictHostKeyChecking=no"
        attribute :ssh_opts

        # @return [Object, nil] Specify an optional private key file path, on the target host, to use for the checkout.
        attribute :key_file

        # @return [Object, nil] Reference repository (see "git clone --reference ...")
        attribute :reference

        # @return [String, nil] Name of the remote.
        attribute :remote
        validates :remote, type: String

        # @return [String, nil] Add an additional refspec to be fetched. If version is set to a I(SHA-1) not reachable from any branch or tag, this option may be necessary to specify the ref containing the I(SHA-1). Uses the same syntax as the 'git fetch' command. An example value could be "refs/meta/config".
        attribute :refspec
        validates :refspec, type: String

        # @return [:yes, :no, nil] If C(yes), any modified files in the working repository will be discarded.  Prior to 0.7, this was always 'yes' and could not be disabled.  Prior to 1.9, the default was `yes`
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Create a shallow clone with a history truncated to the specified number or revisions. The minimum possible value is C(1), otherwise ignored. Needs I(git>=1.9.1) to work correctly.
        attribute :depth

        # @return [:yes, :no, nil] If C(no), do not clone the repository if it does not exist locally
        attribute :clone
        validates :clone, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), do not retrieve new revisions from the origin repository,Operations like archive will work on the existing (old) repository and might not respond to changes to the options version or remote.
        attribute :update
        validates :update, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Path to git executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.
        attribute :executable

        # @return [:yes, :no, nil] if C(yes), repository will be created as a bare repo, otherwise it will be a standard repo with a workspace.
        attribute :bare
        validates :bare, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The umask to set before doing any checkouts, or any other repository maintenance.
        attribute :umask

        # @return [:yes, :no, nil] if C(no), repository will be cloned without the --recursive option, skipping sub-modules.
        attribute :recursive
        validates :recursive, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] if C(yes), submodules will track the latest commit on their master branch (or other branch specified in .gitmodules).  If C(no), submodules will be kept at the revision specified by the main project. This is equivalent to specifying the --remote flag to git submodule update.
        attribute :track_submodules
        validates :track_submodules, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] if C(yes), when cloning or checking out a C(version) verify the signature of a GPG signed commit. This requires C(git) version>=2.1.0 to be installed. The commit MUST be signed and the public key MUST be present in the GPG keyring.
        attribute :verify_commit
        validates :verify_commit, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specify archive file path with extension. If specified, creates an archive file of the specified format containing the tree structure for the source tree. Allowed archive formats ["zip", "tar.gz", "tar", "tgz"],This will clone and perform git archive from local directory as not all git servers support git archive.
        attribute :archive
        validates :archive, type: String

        # @return [String, nil] The path to place the cloned repository. If specified, Git repository can be separated from working tree.
        attribute :separate_git_dir
        validates :separate_git_dir, type: String
      end
    end
  end
end
