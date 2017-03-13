# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove YUM repositories in RPM-based Linux distributions.
      class Yum_repository < Base
        # @return [:yes, :no, nil] If set to C(yes) Yum will download packages and metadata from this repo in parallel, if possible.
        attribute :async
        validates :async, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Maximum available network bandwidth in bytes/second. Used with the I(throttle) option.,If I(throttle) is a percentage and bandwidth is C(0) then bandwidth throttling will be disabled. If I(throttle) is expressed as a data rate (bytes/sec) then this option is ignored. Default is C(0) (no bandwidth throttling).
        attribute :bandwidth
        validates :bandwidth, type: Integer

        # @return [String, nil] URL to the directory where the yum repository's 'repodata' directory lives.,This or the I(mirrorlist) parameter is required if I(state) is set to C(present).
        attribute :baseurl
        validates :baseurl, type: String

        # @return [Integer, nil] Relative cost of accessing this repository. Useful for weighing one repo's packages as greater/less than any other.
        attribute :cost
        validates :cost, type: Integer

        # @return [Integer, nil] When the relative size of deltarpm metadata vs pkgs is larger than this, deltarpm metadata is not downloaded from the repo. Note that you can give values over C(100), so C(200) means that the metadata is required to be half the size of the packages. Use C(0) to turn off this check, and always download metadata.
        attribute :deltarpm_metadata_percentage
        validates :deltarpm_metadata_percentage, type: Integer

        # @return [Integer, nil] When the relative size of delta vs pkg is larger than this, delta is not used. Use C(0) to turn off delta rpm processing. Local repositories (with file:// I(baseurl)) have delta rpms turned off by default.
        attribute :deltarpm_percentage
        validates :deltarpm_percentage, type: Integer

        # @return [String, nil] A human readable string describing the repository.,This parameter is only required if I(state) is set to C(present).
        attribute :description
        validates :description, type: String

        # @return [:yes, :no, nil] This tells yum whether or not use this repository.
        attribute :enabled
        validates :enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Determines whether yum will allow the use of package groups for this repository.
        attribute :enablegroups
        validates :enablegroups, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] List of packages to exclude from updates or installs. This should be a space separated list. Shell globs using wildcards (eg. C(*) and C(?)) are allowed.,The list can also be a regular YAML array.
        attribute :exclude

        # @return [:roundrobin, :priority, nil] C(roundrobin) randomly selects a URL out of the list of URLs to start with and proceeds through each of them as it encounters a failure contacting the host.,C(priority) starts from the first I(baseurl) listed and reads through them sequentially.
        attribute :failovermethod
        validates :failovermethod, inclusion: {:in=>[:roundrobin, :priority], :message=>"%{value} needs to be :roundrobin, :priority"}, allow_nil: true

        # @return [String, nil] File to use to save the repo in. Defaults to the value of I(name).
        attribute :file
        validates :file, type: String

        # @return [Object, nil] A URL pointing to the ASCII-armored CA key file for the repository.
        attribute :gpgcakey

        # @return [:yes, :no, nil] Tells yum whether or not it should perform a GPG signature check on packages.
        attribute :gpgcheck
        validates :gpgcheck, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] A URL pointing to the ASCII-armored GPG key file for the repository.
        attribute :gpgkey
        validates :gpgkey, type: String

        # @return [:all, :packages, :none, nil] Determines how upstream HTTP caches are instructed to handle any HTTP downloads that Yum does.,C(all) means that all HTTP downloads should be cached.,C(packages) means that only RPM package downloads should be cached (but not repository metadata downloads).,C(none) means that no HTTP downloads should be cached.
        attribute :http_caching
        validates :http_caching, inclusion: {:in=>[:all, :packages, :none], :message=>"%{value} needs to be :all, :packages, :none"}, allow_nil: true

        # @return [Object, nil] Include external configuration file. Both, local path and URL is supported. Configuration file will be inserted at the position of the I(include=) line. Included files may contain further include lines. Yum will abort with an error if an inclusion loop is detected.
        attribute :include

        # @return [Object, nil] List of packages you want to only use from a repository. This should be a space separated list. Shell globs using wildcards (eg. C(*) and C(?)) are allowed. Substitution variables (e.g. C($releasever)) are honored here.,The list can also be a regular YAML array.
        attribute :includepkgs

        # @return [4, 6, :IPv4, :IPv6, :whatever, nil] Determines how yum resolves host names.,C(4) or C(IPv4) - resolve to IPv4 addresses only.,C(6) or C(IPv6) - resolve to IPv6 addresses only.
        attribute :ip_resolve
        validates :ip_resolve, inclusion: {:in=>[4, 6, :IPv4, :IPv6, :whatever], :message=>"%{value} needs to be 4, 6, :IPv4, :IPv6, :whatever"}, allow_nil: true

        # @return [:yes, :no, nil] This tells yum whether or not HTTP/1.1 keepalive should be used with this repository. This can improve transfer speeds by using one connection when downloading multiple files from a repository.
        attribute :keepalive
        validates :keepalive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [0, 1, nil] Either C(1) or C(0). Determines whether or not yum keeps the cache of headers and packages after successful installation.
        attribute :keepcache
        validates :keepcache, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Integer, nil] Time (in seconds) after which the metadata will expire.,Default value is 6 hours.
        attribute :metadata_expire
        validates :metadata_expire, type: Integer

        # @return [:never, :"read-only:past", :"read-only:present", :"read-only:future", nil] Filter the I(metadata_expire) time, allowing a trade of speed for accuracy if a command doesn't require it. Each yum command can specify that it requires a certain level of timeliness quality from the remote repos. from "I'm about to install/upgrade, so this better be current" to "Anything that's available is good enough".,C(never) - Nothing is filtered, always obey I(metadata_expire).,C(read-only:past) - Commands that only care about past information are filtered from metadata expiring. Eg. I(yum history) info (if history needs to lookup anything about a previous transaction, then by definition the remote package was available in the past).,C(read-only:present) - Commands that are balanced between past and future. Eg. I(yum list yum).,C(read-only:future) - Commands that are likely to result in running other commands which will require the latest metadata. Eg. I(yum check-update).,Note that this option does not override "yum clean expire-cache".
        attribute :metadata_expire_filter
        validates :metadata_expire_filter, inclusion: {:in=>[:never, :"read-only:past", :"read-only:present", :"read-only:future"], :message=>"%{value} needs to be :never, :\"read-only:past\", :\"read-only:present\", :\"read-only:future\""}, allow_nil: true

        # @return [Object, nil] Specifies a URL to a metalink file for the repomd.xml, a list of mirrors for the entire repository are generated by converting the mirrors for the repomd.xml file to a I(baseurl).
        attribute :metalink

        # @return [String, nil] Specifies a URL to a file containing a list of baseurls.,This or the I(baseurl) parameter is required if I(state) is set to C(present).
        attribute :mirrorlist
        validates :mirrorlist, type: String

        # @return [Integer, nil] Time (in seconds) after which the mirrorlist locally cached will expire.,Default value is 6 hours.
        attribute :mirrorlist_expire
        validates :mirrorlist_expire, type: Integer

        # @return [String] Unique repository ID.,This parameter is only required if I(state) is set to C(present) or C(absent).
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Option used to allow the user to overwrite any of the other options. To remove an option, set the value of the option to C(null).
        attribute :params
        validates :params, type: String

        # @return [Object, nil] Password to use with the username for basic authentication.
        attribute :password

        # @return [Integer, nil] Enforce ordered protection of repositories. The value is an integer from 1 to 99.,This option only works if the YUM Priorities plugin is installed.
        attribute :priority
        validates :priority, type: Integer

        # @return [:yes, :no, nil] Protect packages from updates from other repositories.
        attribute :protect
        validates :protect, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] URL to the proxy server that yum should use. Set to C(_none_) to disable the global proxy setting.
        attribute :proxy

        # @return [Object, nil] Username to use for proxy.
        attribute :proxy_password

        # @return [Object, nil] Password for this proxy.
        attribute :proxy_username

        # @return [:yes, :no, nil] This tells yum whether or not it should perform a GPG signature check on the repodata from this repository.
        attribute :repo_gpgcheck
        validates :repo_gpgcheck, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Directory where the C(.repo) files will be stored.
        attribute :reposdir
        validates :reposdir, type: String

        # @return [Integer, nil] Set the number of times any attempt to retrieve a file should retry before returning an error. Setting this to C(0) makes yum try forever.
        attribute :retries
        validates :retries, type: Integer

        # @return [:yes, :no, nil] Enables support for S3 repositories.,This option only works if the YUM S3 plugin is installed.
        attribute :s3_enabled
        validates :s3_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes) yum will continue running if this repository cannot be contacted for any reason. This should be set carefully as all repos are consulted for any given command.
        attribute :skip_if_unavailable
        validates :skip_if_unavailable, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether yum should check the permissions on the paths for the certificates on the repository (both remote and local).,If we can't read any of the files then yum will force I(skip_if_unavailable) to be C(yes). This is most useful for non-root processes which use yum on repos that have client cert files which are readable only by root.
        attribute :ssl_check_cert_permissions
        validates :ssl_check_cert_permissions, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Path to the directory containing the databases of the certificate authorities yum should use to verify SSL certificates.
        attribute :sslcacert

        # @return [Object, nil] Path to the SSL client certificate yum should use to connect to repos/remote sites.
        attribute :sslclientcert

        # @return [Object, nil] Path to the SSL client key yum should use to connect to repos/remote sites.
        attribute :sslclientkey

        # @return [:yes, :no, nil] Defines whether yum should verify SSL certificates/hosts at all.
        attribute :sslverify
        validates :sslverify, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:absent, :present, nil] State of the repo file.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Enable bandwidth throttling for downloads.,This option can be expressed as a absolute data rate in bytes/sec. An SI prefix (k, M or G) may be appended to the bandwidth value.
        attribute :throttle

        # @return [Integer, nil] Number of seconds to wait for a connection before timing out.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] When a repository id is displayed, append these yum variables to the string if they are used in the I(baseurl)/etc. Variables are appended in the order listed (and found).
        attribute :ui_repoid_vars
        validates :ui_repoid_vars, type: String

        # @return [Object, nil] Username to use for basic authentication to a repo or really any url.
        attribute :username
      end
    end
  end
end
