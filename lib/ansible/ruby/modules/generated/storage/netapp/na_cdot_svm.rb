# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy svm on NetApp cDOT
      class Na_cdot_svm < Base
        # @return [:present, :absent] Whether the specified SVM should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the SVM to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Root volume of the SVM. Required when C(state=present).
        attribute :root_volume
        validates :root_volume, type: String

        # @return [String, nil] The aggregate on which the root volume will be created.,Required when C(state=present).
        attribute :root_volume_aggregate
        validates :root_volume_aggregate, type: String

        # @return [:unix, :ntfs, :mixed, :unified, nil] Security Style of the root volume.,When specified as part of the vserver-create, this field represents the security style for the Vserver root volume.,When specified as part of vserver-get-iter call, this will return the list of matching Vservers.,Possible values are 'unix', 'ntfs', 'mixed'.,The 'unified' security style, which applies only to Infinite Volumes, cannot be applied to a Vserver's root volume.,Valid options are "unix" for NFS, "ntfs" for CIFS, "mixed" for Mixed, "unified" for Unified.,Required when C(state=present)
        attribute :root_volume_security_style
        validates :root_volume_security_style, inclusion: {:in=>[:unix, :ntfs, :mixed, :unified], :message=>"%{value} needs to be :unix, :ntfs, :mixed, :unified"}, allow_nil: true
      end
    end
  end
end
