# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, modify or delete svm on NetApp ONTAP
      class Na_ontap_svm < Base
        # @return [:present, :absent, nil] Whether the specified SVM should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the SVM to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Name of the SVM to be renamed
        attribute :from_name

        # @return [String, nil] Root volume of the SVM.,Cannot be modified after creation.
        attribute :root_volume
        validates :root_volume, type: String

        # @return [String, nil] The aggregate on which the root volume will be created.,Cannot be modified after creation.
        attribute :root_volume_aggregate
        validates :root_volume_aggregate, type: String

        # @return [:unix, :ntfs, :mixed, :unified, nil] Security Style of the root volume.,When specified as part of the vserver-create, this field represents the security style for the Vserver root volume.,When specified as part of vserver-get-iter call, this will return the list of matching Vservers.,The 'unified' security style, which applies only to Infinite Volumes, cannot be applied to a Vserver's root volume.,Cannot be modified after creation.
        attribute :root_volume_security_style
        validates :root_volume_security_style, inclusion: {:in=>[:unix, :ntfs, :mixed, :unified], :message=>"%{value} needs to be :unix, :ntfs, :mixed, :unified"}, allow_nil: true

        # @return [Object, nil] Allowed Protocols.,When specified as part of a vserver-create, this field represent the list of protocols allowed on the Vserver.,When part of vserver-get-iter call, this will return the list of Vservers which have any of the protocols specified as part of the allowed-protocols.,When part of vserver-modify, this field should include the existing list along with new protocol list to be added to prevent data disruptions.,Possible values,nfs   NFS protocol,,cifs   CIFS protocol,,fcp   FCP protocol,,iscsi   iSCSI protocol,,ndmp   NDMP protocol,,http   HTTP protocol,,nvme   NVMe protocol
        attribute :allowed_protocols

        # @return [Object, nil] List of aggregates assigned for volume operations.,These aggregates could be shared for use with other Vservers.,When specified as part of a vserver-create, this field represents the list of aggregates that are assigned to the Vserver for volume operations.,When part of vserver-get-iter call, this will return the list of Vservers which have any of the aggregates specified as part of the aggr-list.
        attribute :aggr_list

        # @return [Object, nil] IPSpace name,Cannot be modified after creation.
        attribute :ipspace

        # @return [Object, nil] Default snapshot policy setting for all volumes of the Vserver. This policy will be assigned to all volumes created in this Vserver unless the volume create request explicitly provides a snapshot policy or volume is modified later with a specific snapshot policy. A volume-level snapshot policy always overrides the default Vserver-wide snapshot policy.
        attribute :snapshot_policy

        # @return [Object, nil] Language to use for the SVM,Default to C.UTF-8,Possible values   Language,c                 POSIX,ar                Arabic,cs                Czech,da                Danish,de                German,en                English,en_us             English (US),es                Spanish,fi                Finnish,fr                French,he                Hebrew,hr                Croatian,hu                Hungarian,it                Italian,ja                Japanese euc-j,ja_v1             Japanese euc-j,ja_jp.pck         Japanese PCK (sjis),ja_jp.932         Japanese cp932,ja_jp.pck_v2      Japanese PCK (sjis),ko                Korean,no                Norwegian,nl                Dutch,pl                Polish,pt                Portuguese,ro                Romanian,ru                Russian,sk                Slovak,sl                Slovenian,sv                Swedish,tr                Turkish,zh                Simplified Chinese,zh.gbk            Simplified Chinese (GBK),zh_tw             Traditional Chinese euc-tw,zh_tw.big5        Traditional Chinese Big 5
        attribute :language

        # @return [:default, :dp_destination, :sync_source, :sync_destination, nil] The subtype for vserver to be created.,Cannot be modified after creation.
        attribute :subtype
        validates :subtype, inclusion: {:in=>[:default, :dp_destination, :sync_source, :sync_destination], :message=>"%{value} needs to be :default, :dp_destination, :sync_source, :sync_destination"}, allow_nil: true
      end
    end
  end
end
