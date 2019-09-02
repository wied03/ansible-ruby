# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Interacts with FTP, HTTP and HTTPS web services.
      # Supports Digest, Basic and WSSE HTTP authentication mechanisms.
      # For non-Windows targets, use the M(uri) module instead.
      class Win_uri < Base
        # @return [String] Supports FTP, HTTP or HTTPS URLs in the form of (ftp|http|https)://host.domain:port/path.
        attribute :url
        validates :url, presence: true, type: String

        # @return [:CONNECT, :DELETE, :GET, :HEAD, :MERGE, :OPTIONS, :PATCH, :POST, :PUT, :REFRESH, :TRACE, nil] The HTTP Method of the request or response.
        attribute :method
        validates :method, expression_inclusion: {:in=>[:CONNECT, :DELETE, :GET, :HEAD, :MERGE, :OPTIONS, :PATCH, :POST, :PUT, :REFRESH, :TRACE], :message=>"%{value} needs to be :CONNECT, :DELETE, :GET, :HEAD, :MERGE, :OPTIONS, :PATCH, :POST, :PUT, :REFRESH, :TRACE"}, allow_nil: true

        # @return [Object, nil] Sets the "Content-Type" header.
        attribute :content_type

        # @return [String, nil] The body of the HTTP request/response to the web service.
        attribute :body
        validates :body, type: String

        # @return [Object, nil] Username to use for authentication.
        attribute :user

        # @return [Object, nil] Password to use for authentication.
        attribute :password

        # @return [:yes, :no, nil] By default the authentication information is only sent when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail.,This option forces the sending of the Basic authentication header upon the initial request.
        attribute :force_basic_auth
        validates :force_basic_auth, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Output the response body to a file.
        attribute :dest
        validates :dest, type: String

        # @return [Hash, nil] Extra headers to set on the request, see the examples for more details on how to set this.
        attribute :headers
        validates :headers, type: Hash

        # @return [String, nil] A filename, when it already exists, this step will be skipped.
        attribute :creates
        validates :creates, type: String

        # @return [String, nil] A filename, when it does not exist, this step will be skipped.
        attribute :removes
        validates :removes, type: String

        # @return [:yes, :no, nil] Whether or not to return the body of the response as a "content" key in the dictionary result. If the reported Content-type is "application/json", then the JSON is additionally loaded into a key called C(json) in the dictionary results.
        attribute :return_content
        validates :return_content, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] A valid, numeric, HTTP status code that signifies success of the request.,Can also be comma separated list of status codes.
        attribute :status_code
        validates :status_code, type: TypeGeneric.new(String)

        # @return [Integer, nil] Specifies how long the request can be pending before it times out (in seconds).,The value 0 (zero) specifies an indefinite time-out.,A Domain Name System (DNS) query can take up to 15 seconds to return or time out. If your request contains a host name that requires resolution, and you set C(timeout) to a value greater than zero, but less than 15 seconds, it can take 15 seconds or more before your request times out.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:all, :none, :safe, nil] Whether or not the C(win_uri) module should follow redirects.,C(all) will follow all redirects.,C(none) will not follow any redirects.,C(safe) will follow only "safe" redirects, where "safe" means that the client is only doing a C(GET) or C(HEAD) on the URI to which it is being redirected.
        attribute :follow_redirects
        validates :follow_redirects, expression_inclusion: {:in=>[:all, :none, :safe], :message=>"%{value} needs to be :all, :none, :safe"}, allow_nil: true

        # @return [Integer, nil] Specifies how many times C(win_uri) redirects a connection to an alternate Uniform Resource Identifier (URI) before the connection fails.,If C(maximum_redirection) is set to 0 (zero) or C(follow_redirects) is set to C(none), or set to C(safe) when not doing C(GET) or C(HEAD) it prevents all redirection.
        attribute :maximum_redirection
        validates :maximum_redirection, type: Integer

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated.  This should only set to C(no) used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specifies the client certificate (.pfx) that is used for a secure web request.,The WinRM connection must be authenticated with C(CredSSP) if the certificate file is not password protected.,Other authentication types can set I(client_cert_password) when the cert is password protected.
        attribute :client_cert
        validates :client_cert, type: String

        # @return [Object, nil] The password for the client certificate (.pfx) file that is used for a secure web request.
        attribute :client_cert_password
      end
    end
  end
end
