# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # netact_cm_command can be used to run various configuration management operations. This module requires that the target hosts have Nokia NetAct network management system installed. Module will access the Configurator command line interface in NetAct to upload network configuration to NetAct, run configuration export, plan import and configuration provision operations To set the scope of the operation, define Distinguished Name (DN) or Working Set (WS) or Maintenance Region (MR) as input
      class Netact_cm_command < Base
        # @return [:upload, :provision, :import, :export, :Provision_Mass_Modification] Supported operations allow user to upload actual configuration from the network, to import and provision prepared plans, or export reference or actual configuration for planning purposes. Provision_Mass_Modification enables provisioning the same parameters to multiple network elements. This operation supports modifications only to one object class at a time. With this option NetAct Configurator creates and provisions a plan to the network with the given scope and options.
        attribute :operation
        validates :operation, presence: true, inclusion: {:in=>[:upload, :provision, :import, :export, :Provision_Mass_Modification], :message=>"%{value} needs to be :upload, :provision, :import, :export, :Provision_Mass_Modification"}

        # @return [Object, nil] user specified operation name
        attribute :opsName

        # @return [Object, nil] Sets the exact scope of the operation in form of a list of managed object Distinguished Names (DN) in the network. A single DN or a list of DNs can be given (comma separated list without spaces). Alternatively, if DN or a list of DNs is not given, working set (WS) or Maintenance Region (MR) must be provided as parameter to set the scope of operation.
        attribute :DN

        # @return [Object, nil] Sets the scope of the operation to use one or more pre-defined working sets (WS) in NetAct. A working set contains network elements selected by user according to defined criteria. A single WS name, or multiple WSs can be provided (comma-separated list without spaces). Alternatively, if a WS name or a list of WSs is not given, Distinguished Name (DN) or Maintenance Region(MR) must be provided as parameter to set the scope of operation.
        attribute :WS

        # @return [Object, nil] Sets the scope of the operation to network elements assigned to a Maintenance Region (MR) Value can be set as MR IDs including the Maintenance Region Collection (MRC) information (for example MRC-FIN1/MR-Hel). Multiple MRs can be given (comma-separated list without spaces) The value of this parameter is searched through MR IDs under given MRC. If there is no match, then it is searched from all MR names. Alternatively, if MR ID or a list or MR IDs is not given, Distinguished Name (DN) or Working Set (WS) must be provided as parameter to set the scope of operation.
        attribute :MR

        # @return [String, nil] Specifies a plan name.
        attribute :planName
        validates :planName, type: String

        # @return [:plan, :actual, :reference, :template, :siteTemplate, nil] Specifies the type of the export operation.
        attribute :typeOption
        validates :typeOption, inclusion: {:in=>[:plan, :actual, :reference, :template, :siteTemplate], :message=>"%{value} needs to be :plan, :actual, :reference, :template, :siteTemplate"}, allow_nil: true

        # @return [:RAML2, :CSV, :XLSX, nil] Indicates file format.
        attribute :fileFormat
        validates :fileFormat, inclusion: {:in=>[:RAML2, :CSV, :XLSX], :message=>"%{value} needs to be :RAML2, :CSV, :XLSX"}, allow_nil: true

        # @return [String, nil] Specifies a file name. Valid for Import and Export operations.
        attribute :fileName
        validates :fileName, type: String

        # @return [Object, nil] Specifies full path to plan file location for the import operation. This parameter (inputFile) or the fileName parameter must be filled. If both are present then the inputFile is used.
        attribute :inputFile

        # @return [Boolean, nil] Specifies if backup plan generation is enabled.
        attribute :createBackupPlan
        validates :createBackupPlan, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specifies a backup plan name
        attribute :backupPlanName
        validates :backupPlanName, type: String

        # @return [Object, nil] NetAct Configurator will print more info
        attribute :verbose

        # @return [String, nil] Extra options to be set for operations. Check Configuration Management > Configuration Management Operating Procedures > Command Line Operations in Nokia NetAct user documentation for further information for extra options.
        attribute :extra_opts
        validates :extra_opts, type: String
      end
    end
  end
end
