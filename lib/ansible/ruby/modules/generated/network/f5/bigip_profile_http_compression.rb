# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage HTTP compression profiles on a BIG-IP.
      class Bigip_profile_http_compression < Base
        # @return [String] Specifies the name of the compression profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Specifies the profile from which this profile inherits settings.,When creating a new profile, if this parameter is not specified, the default is the system-supplied C(httpcompression) profile.
        attribute :parent

        # @return [String, nil] Description of the HTTP compression profile.
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] Maximum number of compressed bytes that the system buffers before inserting a Content-Length header (which specifies the compressed size) into the response.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :buffer_size
        validates :buffer_size, type: Integer

        # @return [1, 2, 3, 4, 5, 6, 7, 8, 9, nil] Specifies the degree to which the system compresses the content.,Higher compression levels cause the compression process to be slower.,Valid values are between 1 (least compression and fastest) to 9 (most compression and slowest).
        attribute :gzip_level
        validates :gzip_level, inclusion: {:in=>[1, 2, 3, 4, 5, 6, 7, 8, 9], :message=>"%{value} needs to be 1, 2, 3, 4, 5, 6, 7, 8, 9"}, allow_nil: true

        # @return [1, 2, 4, 8, 16, 32, 64, 128, 256, nil] Number of kilobytes of memory that the system uses for internal compression buffers when compressing a server response.
        attribute :gzip_memory_level
        validates :gzip_memory_level, inclusion: {:in=>[1, 2, 4, 8, 16, 32, 64, 128, 256], :message=>"%{value} needs to be 1, 2, 4, 8, 16, 32, 64, 128, 256"}, allow_nil: true

        # @return [1, 2, 4, 8, 16, 32, 64, 128, nil] Number of kilobytes in the window size that the system uses when compressing a server response.
        attribute :gzip_window_size
        validates :gzip_window_size, inclusion: {:in=>[1, 2, 4, 8, 16, 32, 64, 128], :message=>"%{value} needs to be 1, 2, 4, 8, 16, 32, 64, 128"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the profile exists.,When C(absent), ensures the profile is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
