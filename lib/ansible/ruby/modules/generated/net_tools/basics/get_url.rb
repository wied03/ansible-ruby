# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Downloads files from HTTP, HTTPS, or FTP to the remote server. The remote server I(must) have direct access to the remote resource.
      # By default, if an environment variable C(<protocol>_proxy) is set on the target host, requests will be sent through that proxy. This behaviour can be overridden by setting a variable for this task (see `setting the environment <https://docs.ansible.com/playbooks_environment.html>`_), or by using the use_proxy option.
      # HTTP redirects can redirect from HTTP to HTTPS so you should be sure that your proxy environment for both protocols is correct.
      # From Ansible 2.4 when run with C(--check), it will do a HEAD request to validate the URL but will not download the entire file or verify it against hashes.
      # For Windows targets, use the M(win_get_url) module instead.
      class Get_url < Base
        # @return [String] HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] Absolute path of where to download the file to.,If C(dest) is a directory, either the server provided filename or, if none provided, the base name of the URL on the remote server will be used. If a directory, C(force) has no effect.,If C(dest) is a directory, the file will always be downloaded (regardless of the C(force) option), but replaced only if the contents changed..
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Object, nil] Absolute path of where temporary file is downloaded to.,When run on Ansible 2.5 or greater, path defaults to ansible's remote_tmp setting,When run on Ansible prior to 2.5, it defaults to C(TMPDIR), C(TEMP) or C(TMP) env variables or a platform specific value.,U(https://docs.python.org/2/library/tempfile.html#tempfile.tempdir)
        attribute :tmp_dest

        # @return [:yes, :no, nil] If C(yes) and C(dest) is not a directory, will download the file every time and replace the file if the contents change. If C(no), the file will only be downloaded if the destination does not exist. Generally should be C(yes) only for small local files.,Prior to 0.6, this module behaved as if C(yes) was the default.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] If a SHA-256 checksum is passed to this parameter, the digest of the destination file will be calculated after it is downloaded to ensure its integrity and verify that the transfer completed successfully. This option is deprecated. Use C(checksum) instead.
        attribute :sha256sum
        validates :sha256sum, type: String

        # @return [String, nil] If a checksum is passed to this parameter, the digest of the destination file will be calculated after it is downloaded to ensure its integrity and verify that the transfer completed successfully. Format: <algorithm>:<checksum|url>, e.g. checksum="sha256:D98291AC[...]B6DC7B97", checksum="sha256:http://example.com/path/sha256sum.txt",If you worry about portability, only the sha1 algorithm is available on all platforms and python versions.,The third party hashlib library can be installed for access to additional algorithms.,Additionally, if a checksum is passed to this parameter, and the file exist under the C(dest) location, the I(destination_checksum) would be calculated, and if checksum equals I(destination_checksum), the file download would be skipped (unless C(force) is true).
        attribute :checksum
        validates :checksum, type: String

        # @return [:yes, :no, nil] if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.
        attribute :use_proxy
        validates :use_proxy, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Timeout in seconds for URL request.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Hash, nil] Add custom HTTP headers to a request in hash/dict format. The hash/dict format was added in 2.6. Previous versions used a C("key:value,key:value") string format. The C("key:value,key:value") string format is deprecated and will be removed in version 2.10.
        attribute :headers
        validates :headers, type: Hash

        # @return [Object, nil] The username for use in HTTP basic authentication.,This parameter can be used without C(url_password) for sites that allow empty passwords.
        attribute :url_username

        # @return [Object, nil] The password for use in HTTP basic authentication.,If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.
        attribute :url_password

        # @return [:yes, :no, nil] httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.
        attribute :force_basic_auth
        validates :force_basic_auth, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] PEM formatted certificate chain file to be used for SSL client authentication. This file can also include the key as well, and if the key is included, C(client_key) is not required.
        attribute :client_cert

        # @return [Object, nil] PEM formatted file that contains your private key to be used for SSL client authentication. If C(client_cert) contains both the certificate and key, this option is not required.
        attribute :client_key

        # @return [Object, nil] all arguments accepted by the M(file) module also work here
        attribute :others
      end
    end
  end
end
