# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP ASM policies.
      class Bigip_asm_policy < Base
        # @return [Boolean, nil] If C(yes) will apply and activate existing inactive policy. If C(no), it will deactivate existing active policy. Generally should be C(yes) only in cases where you want to activate new or existing policy.
        attribute :active
        validates :active, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The ASM policy to manage or create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] When C(state) is C(present), and C(file) or C(template) parameter is provided, new ASM policy is imported and created with the given C(name).,When C(state) is present and no C(file) or C(template) parameter is provided new blank ASM policy is created with the given C(name).,When C(state) is C(absent), ensures that the policy is removed, even if it is currently active.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Full path to a policy file to be imported into the BIG-IP ASM.,Policy files exported from newer versions of BIG-IP cannot be imported into older versions of BIG-IP. The opposite, however, is true; you can import older into newer.
        attribute :file
        validates :file, type: String

        # @return [:"ActiveSync v1.0 v2.0 (http)", :"ActiveSync v1.0 v2.0 (https)", :Comprehensive, :Drupal, :Fundamental, :Joomla, :"LotusDomino 6.5 (http)", :"LotusDomino 6.5 (https)", :"OWA Exchange 2003 (http)", :"OWA Exchange 2003 (https)", :"OWA Exchange 2003 with ActiveSync (http)", :"OWA Exchange 2003 with ActiveSync (https)", :"OWA Exchange 2007 (http)", :"OWA Exchange 2007 (https)", :"OWA Exchange 2007 with ActiveSync (http)", :"OWA Exchange 2007 with ActiveSync (https)", :"OWA Exchange 2010 (http)", :"OWA Exchange 2010 (https)", :"Oracle 10g Portal (http)", :"Oracle 10g Portal (https)", :"Oracle Applications 11i (http)", :"Oracle Applications 11i (https)", :"PeopleSoft Portal 9 (http)", :"PeopleSoft Portal 9 (https)", :"Rapid Deployment Policy", :"SAP NetWeaver 7 (http)", :"SAP NetWeaver 7 (https)", :"SharePoint 2003 (http)", :"SharePoint 2003 (https)", :"SharePoint 2007 (http)", :"SharePoint 2007 (https)", :"SharePoint 2010 (http)", :"SharePoint 2010 (https)", :"Vulnerability Assessment Baseline", :Wordpress, nil] An ASM policy built-in template. If the template does not exist we will raise an error.,Once the policy has been created, this value cannot change.,The C(Comprehensive), C(Drupal), C(Fundamental), C(Joomla), C(Vulnerability Assessment Baseline), and C(Wordpress) templates are only available on BIG-IP versions >= 13.
        attribute :template
        validates :template, inclusion: {:in=>[:"ActiveSync v1.0 v2.0 (http)", :"ActiveSync v1.0 v2.0 (https)", :Comprehensive, :Drupal, :Fundamental, :Joomla, :"LotusDomino 6.5 (http)", :"LotusDomino 6.5 (https)", :"OWA Exchange 2003 (http)", :"OWA Exchange 2003 (https)", :"OWA Exchange 2003 with ActiveSync (http)", :"OWA Exchange 2003 with ActiveSync (https)", :"OWA Exchange 2007 (http)", :"OWA Exchange 2007 (https)", :"OWA Exchange 2007 with ActiveSync (http)", :"OWA Exchange 2007 with ActiveSync (https)", :"OWA Exchange 2010 (http)", :"OWA Exchange 2010 (https)", :"Oracle 10g Portal (http)", :"Oracle 10g Portal (https)", :"Oracle Applications 11i (http)", :"Oracle Applications 11i (https)", :"PeopleSoft Portal 9 (http)", :"PeopleSoft Portal 9 (https)", :"Rapid Deployment Policy", :"SAP NetWeaver 7 (http)", :"SAP NetWeaver 7 (https)", :"SharePoint 2003 (http)", :"SharePoint 2003 (https)", :"SharePoint 2007 (http)", :"SharePoint 2007 (https)", :"SharePoint 2010 (http)", :"SharePoint 2010 (https)", :"Vulnerability Assessment Baseline", :Wordpress], :message=>"%{value} needs to be :\"ActiveSync v1.0 v2.0 (http)\", :\"ActiveSync v1.0 v2.0 (https)\", :Comprehensive, :Drupal, :Fundamental, :Joomla, :\"LotusDomino 6.5 (http)\", :\"LotusDomino 6.5 (https)\", :\"OWA Exchange 2003 (http)\", :\"OWA Exchange 2003 (https)\", :\"OWA Exchange 2003 with ActiveSync (http)\", :\"OWA Exchange 2003 with ActiveSync (https)\", :\"OWA Exchange 2007 (http)\", :\"OWA Exchange 2007 (https)\", :\"OWA Exchange 2007 with ActiveSync (http)\", :\"OWA Exchange 2007 with ActiveSync (https)\", :\"OWA Exchange 2010 (http)\", :\"OWA Exchange 2010 (https)\", :\"Oracle 10g Portal (http)\", :\"Oracle 10g Portal (https)\", :\"Oracle Applications 11i (http)\", :\"Oracle Applications 11i (https)\", :\"PeopleSoft Portal 9 (http)\", :\"PeopleSoft Portal 9 (https)\", :\"Rapid Deployment Policy\", :\"SAP NetWeaver 7 (http)\", :\"SAP NetWeaver 7 (https)\", :\"SharePoint 2003 (http)\", :\"SharePoint 2003 (https)\", :\"SharePoint 2007 (http)\", :\"SharePoint 2007 (https)\", :\"SharePoint 2010 (http)\", :\"SharePoint 2010 (https)\", :\"Vulnerability Assessment Baseline\", :Wordpress"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
