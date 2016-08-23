# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Get_url < Base
        # @return [String] HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] absolute path of where to download the file to.,If C(dest) is a directory, either the server provided filename or, if none provided, the base name of the URL on the remote server will be used. If a directory, C(force) has no effect. If C(dest) is a directory, the file will always be downloaded (regardless of the force option), but replaced only if the contents changed.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] absolute path of where temporary file is downloaded to.,Defaults to TMPDIR, TEMP or TMP env variables or a platform specific value,https://docs.python.org/2/library/tempfile.html#tempfile.tempdir
        attribute :tmp_dest
        validates :tmp_dest, type: String

        # @return [:yes, :no, nil] If C(yes) and C(dest) is not a directory, will download the file every time and replace the file if the contents change. If C(no), the file will only be downloaded if the destination does not exist. Generally should be C(yes) only for small local files. Prior to 0.6, this module behaved as if C(yes) was the default.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] If a SHA-256 checksum is passed to this parameter, the digest of the destination file will be calculated after it is downloaded to ensure its integrity and verify that the transfer completed successfully. This option is deprecated. Use 'checksum'.
        attribute :sha256sum

        # @return [String, nil] If a checksum is passed to this parameter, the digest of the destination file will be calculated after it is downloaded to ensure its integrity and verify that the transfer completed successfully. Format: <algorithm>:<checksum>, e.g.: checksum="sha256:D98291AC[...]B6DC7B97" If you worry about portability, only the sha1 algorithm is available on all platforms and python versions.  The third party hashlib library can be installed for access to additional algorithms. Additionaly, if a checksum is passed to this parameter, and the file exist under the C(dest) location, the destination_checksum would be calculated, and if checksum equals destination_checksum, the file download would be skipped (unless C(force) is true). 
        attribute :checksum
        validates :checksum, type: String

        # @return [:yes, :no, nil] if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.
        attribute :use_proxy
        validates :use_proxy, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Timeout in seconds for URL request
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Array<String>, nil] Add custom HTTP headers to a request in the format "key:value,key:value"
        attribute :headers, flat_array: true
        validates :headers, type: TypeGeneric.new(String)

        # @return [Object, nil] The username for use in HTTP basic authentication. This parameter can be used without C(url_password) for sites that allow empty passwords.
        attribute :url_username

        # @return [Object, nil] The password for use in HTTP basic authentication. If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.
        attribute :url_password

        # @return [:yes, :no, nil] httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.
        attribute :force_basic_auth
        validates :force_basic_auth, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] all arguments accepted by the M(file) module also work here
        attribute :others
      end
    end
  end
end
