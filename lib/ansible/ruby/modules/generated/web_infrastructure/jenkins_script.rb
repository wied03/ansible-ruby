# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(jenkins_script) module takes a script plus a dict of values to use within the script and returns the result of the script being run.
      class Jenkins_script < Base
        # @return [String] The groovy script to be executed. This gets passed as a string Template if args is defined.
        attribute :script
        validates :script, presence: true, type: String

        # @return [String, nil] The jenkins server to execute the script against. The default is a local jenkins instance that is not being proxied through a webserver.
        attribute :url
        validates :url, type: String

        # @return [:yes, :no, nil] If set to C(no), the SSL certificates will not be validated. This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The username to connect to the jenkins server with.
        attribute :user
        validates :user, type: String

        # @return [String, nil] The password to connect to the jenkins server with.
        attribute :password
        validates :password, type: String

        # @return [Integer, nil] The request timeout in seconds
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Hash, nil] A dict of key-value pairs used in formatting the script using string.Template (see https://docs.python.org/2/library/string.html#template-strings).
        attribute :args
        validates :args, type: Hash
      end
    end
  end
end
