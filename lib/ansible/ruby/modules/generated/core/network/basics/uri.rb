# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Interacts with HTTP and HTTPS web services and supports Digest, Basic and WSSE HTTP authentication mechanisms.
      class Uri < Base
        # @return [String] HTTP or HTTPS URL in the form (http|https)://host.domain[:port]/path
        attribute :url
        validates :url, presence: true, type: String

        # @return [Object, nil] path of where to download the file to (if desired). If I(dest) is a directory, the basename of the file on the remote server will be used.
        attribute :dest

        # @return [String, nil] username for the module to use for Digest, Basic or WSSE authentication.
        attribute :user
        validates :user, type: String

        # @return [String, nil] password for the module to use for Digest, Basic or WSSE authentication.
        attribute :password
        validates :password, type: String

        # @return [String, nil] The body of the http request/response to the web service. If C(body_format) is set to 'json' it will take an already formatted JSON string or convert a data structure into JSON.
        attribute :body
        validates :body, type: String

        # @return [:raw, :json, nil] The serialization format of the body. When set to json, encodes the body argument, if needed, and automatically sets the Content-Type header accordingly.
        attribute :body_format
        validates :body_format, inclusion: {:in=>[:raw, :json], :message=>"%{value} needs to be :raw, :json"}, allow_nil: true

        # @return [:GET, :POST, :PUT, :HEAD, :DELETE, :OPTIONS, :PATCH, :TRACE, :CONNECT, :REFRESH, nil] The HTTP method of the request or response. It MUST be uppercase.
        attribute :method
        validates :method, inclusion: {:in=>[:GET, :POST, :PUT, :HEAD, :DELETE, :OPTIONS, :PATCH, :TRACE, :CONNECT, :REFRESH], :message=>"%{value} needs to be :GET, :POST, :PUT, :HEAD, :DELETE, :OPTIONS, :PATCH, :TRACE, :CONNECT, :REFRESH"}, allow_nil: true

        # @return [:yes, :no, nil] Whether or not to return the body of the request as a "content" key in the dictionary result. If the reported Content-type is "application/json", then the JSON is additionally loaded into a key called C(json) in the dictionary results.
        attribute :return_content
        validates :return_content, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] The library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.
        attribute :force_basic_auth
        validates :force_basic_auth, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:all, :safe, :none, nil] Whether or not the URI module should follow redirects. C(all) will follow all redirects. C(safe) will follow only "safe" redirects, where "safe" means that the client is only doing a GET or HEAD on the URI to which it is being redirected. C(none) will not follow any redirects. Note that C(yes) and C(no) choices are accepted for backwards compatibility, where C(yes) is the equivalent of C(all) and C(no) is the equivalent of C(safe). C(yes) and C(no) are deprecated and will be removed in some future version of Ansible.
        attribute :follow_redirects
        validates :follow_redirects, inclusion: {:in=>[:all, :safe, :none], :message=>"%{value} needs to be :all, :safe, :none"}, allow_nil: true

        # @return [Object, nil] a filename, when it already exists, this step will not be run.
        attribute :creates

        # @return [Object, nil] a filename, when it does not exist, this step will not be run.
        attribute :removes

        # @return [Integer, nil] A valid, numeric, HTTP status code that signifies success of the request. Can also be comma separated list of status codes.
        attribute :status_code
        validates :status_code, type: Integer

        # @return [Integer, nil] The socket level timeout in seconds
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Object, nil] Any parameter starting with "HEADER_" is a sent with your request as a header. For example, HEADER_Content-Type="application/json" would send the header "Content-Type" along with your request with a value of "application/json". This option is deprecated as of C(2.1) and may be removed in a future release. Use I(headers) instead.
        attribute :HEADER_

        # @return [Object, nil] Add custom HTTP headers to a request in the format of a YAML hash
        attribute :headers

        # @return [Object, nil] all arguments accepted by the M(file) module also work here
        attribute :others

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated.  This should only set to C(no) used on personally controlled sites using self-signed certificates.  Prior to 1.9.2 the code defaulted to C(no).
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
