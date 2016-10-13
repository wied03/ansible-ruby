# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Fetches a file from a URL and saves to locally
      class Win_get_url < Base
        # @return [String] The full URL of a file to download
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] The absolute path of the location to save the file at the URL. Be sure to include a filename and extension as appropriate.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Boolean, nil] If C(yes), will always download the file.  If C(no), will only download the file if it does not exist or the remote file has been modified more recently than the local file.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Basic authentication username
        attribute :username

        # @return [Object, nil] Basic authentication password
        attribute :password

        # @return [Boolean, nil] Skip SSL certificate validation if true
        attribute :skip_certificate_validation
        validates :skip_certificate_validation, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The full URL of the proxy server to download through.
        attribute :proxy_url
        validates :proxy_url, type: String

        # @return [String, nil] Proxy authentication username
        attribute :proxy_username
        validates :proxy_username, type: String

        # @return [String, nil] Proxy authentication password
        attribute :proxy_password
        validates :proxy_password, type: String
      end
    end
  end
end
