# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Upload, download, and delete objects in Rackspace Cloud Files
      class Rax_files_objects < Base
        # @return [:yes, :no, nil] Optionally clear existing metadata when applying metadata to existing objects. Selecting this option is only appropriate when setting type=meta
        attribute :clear_meta
        validates :clear_meta, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] The container to use for file object operations.
        attribute :container
        validates :container, presence: true

        # @return [Object, nil] The destination of a "get" operation; i.e. a local directory, "/home/user/myfolder". Used to specify the destination of an operation on a remote object; i.e. a file name, "file1", or a comma-separated list of remote objects, "file1,file2,file17"
        attribute :dest

        # @return [Object, nil] Used to set an expiration on a file or folder uploaded to Cloud Files. Requires an integer, specifying expiration in seconds
        attribute :expires

        # @return [Object, nil] A hash of items to set as metadata values on an uploaded file or folder
        attribute :meta

        # @return [:get, :put, :delete, nil] The method of operation to be performed.  For example, put to upload files to Cloud Files, get to download files from Cloud Files or delete to delete remote objects in Cloud Files
        attribute :method
        validates :method, inclusion: {:in=>[:get, :put, :delete], :message=>"%{value} needs to be :get, :put, :delete"}, allow_nil: true

        # @return [Object, nil] Source from which to upload files.  Used to specify a remote object as a source for an operation, i.e. a file name, "file1", or a comma-separated list of remote objects, "file1,file2,file17".  src and dest are mutually exclusive on remote-only object operations
        attribute :src

        # @return [:yes, :no, nil] Used to specify whether to maintain nested directory structure when downloading objects from Cloud Files.  Setting to false downloads the contents of a container to a single, flat directory
        attribute :structure
        validates :structure, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:file, :meta, nil] Type of object to do work on,Metadata object or a file object
        attribute :type
        validates :type, inclusion: {:in=>[:file, :meta], :message=>"%{value} needs to be :file, :meta"}, allow_nil: true
      end
    end
  end
end
