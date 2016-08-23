# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Webfaction_site < Base
        # @return [String] The name of the website
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the website should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The webfaction host on which the site should be created.
        attribute :host
        validates :host, presence: true, type: String

        # @return [Boolean, nil] Whether or not to use HTTPS
        attribute :https
        validates :https, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array, nil] A mapping of URLs to apps
        attribute :site_apps
        validates :site_apps, type: Array

        # @return [Array, nil] A list of subdomains associated with this site.
        attribute :subdomains
        validates :subdomains, type: Array

        # @return [String] The webfaction account to use
        attribute :login_name
        validates :login_name, presence: true, type: String

        # @return [String] The webfaction password to use
        attribute :login_password
        validates :login_password, presence: true, type: String
      end
    end
  end
end
