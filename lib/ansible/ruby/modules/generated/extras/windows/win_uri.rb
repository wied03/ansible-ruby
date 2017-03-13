# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Interacts with HTTP and HTTPS web services and supports Digest, Basic and WSSE HTTP authentication mechanisms.
      class Win_uri < Base
        # @return [String, nil] HTTP or HTTPS URL in the form of (http|https)://host.domain:port/path
        attribute :url
        validates :url, type: String

        # @return [:GET, :POST, :PUT, :HEAD, :DELETE, :OPTIONS, :PATCH, :TRACE, :CONNECT, :REFRESH, nil] The HTTP Method of the request or response.
        attribute :method
        validates :method, inclusion: {:in=>[:GET, :POST, :PUT, :HEAD, :DELETE, :OPTIONS, :PATCH, :TRACE, :CONNECT, :REFRESH], :message=>"%{value} needs to be :GET, :POST, :PUT, :HEAD, :DELETE, :OPTIONS, :PATCH, :TRACE, :CONNECT, :REFRESH"}, allow_nil: true

        # @return [Object, nil] Sets the "Content-Type" header.
        attribute :content_type

        # @return [Object, nil] The body of the HTTP request/response to the web service.
        attribute :body

        # @return [Object, nil] Key Value pairs for headers. Example "Host: www.somesite.com"
        attribute :headers

        # @return [Boolean, nil] This module relies upon 'Invoke-WebRequest', which by default uses the Internet Explorer Engine to parse a webpage. There's an edge-case where if a user hasn't run IE before, this will fail. The only advantage to using the Internet Explorer praser is that you can traverse the DOM in a powershell script. That isn't useful for Ansible, so by default we toggle 'UseBasicParsing'. However, you can toggle that off here.
        attribute :use_basic_parsing
        validates :use_basic_parsing, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
