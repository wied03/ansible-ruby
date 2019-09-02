# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for managing data groups on a BIG-IP. Data groups provide a way to store collections of values on a BIG-IP for later use in things such as LTM rules, iRules, and ASM policies.
      class Bigip_data_group < Base
        # @return [String] Specifies the name of the data group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:address, :addr, :ip, :string, :str, :integer, :int, nil] The type of records in this data group.,This parameter is especially important because it causes BIG-IP to store your data in different ways so-as to optimize access to it. For example, it would be wrong to specify a list of records containing IP addresses, but label them as a C(string) type.,This value cannot be changed once the data group is created.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:address, :addr, :ip, :string, :str, :integer, :int], :message=>"%{value} needs to be :address, :addr, :ip, :string, :str, :integer, :int"}, allow_nil: true

        # @return [Symbol, nil] The type of this data group.,You should only consider setting this value in cases where you know exactly what you're doing, B(or), you are working with a pre-existing internal data group.,Be aware that if you deliberately force this parameter to C(yes), and you have a either a large number of records or a large total records size, this large amount of data will be reflected in your BIG-IP configuration. This can lead to B(long) system configuration load times due to needing to parse and verify the large configuration.,There is a limit of either 4 megabytes or 65,000 records (whichever is more restrictive) for uploads when this parameter is C(yes).,This value cannot be changed once the data group is created.
        attribute :internal
        validates :internal, type: Symbol

        # @return [Object, nil] When creating a new data group, this specifies the file name that you want to give an external data group file on the BIG-IP.,This parameter is ignored when C(internal) is C(yes).,This parameter can be used to select an existing data group file to use with an existing external data group.,If this value is not provided, it will be given the value specified in C(name) and, therefore, match the name of the data group.,This value may only contain letters, numbers, underscores, dashes, or a period.
        attribute :external_file_name

        # @return [Array<Hash>, Hash, nil] Specifies the records that you want to add to a data group.,If you have a large number of records, it is recommended that you use C(records_content) instead of typing all those records here.,The technical limit of either 1. the number of records, or 2. the total size of all records, varies with the size of the total resources on your system; in particular, RAM.,When C(internal) is C(no), at least one record must be specified in either C(records) or C(records_content).
        attribute :records
        validates :records, type: TypeGeneric.new(Hash)

        # @return [String, nil] Path to a file with records in it.,The file should be well-formed. This means that it includes records, one per line, that resemble the following format "key separator value". For example, C(foo := bar).,BIG-IP is strict about this format, but this module is a bit more lax. It will allow you to include arbitrary amounts (including none) of empty space on either side of the separator. For an illustration of this, see the Examples section.,Record keys are limited in length to no more than 65520 characters.,Values of record keys are limited in length to no more than 65520 characters.,The total number of records you can have in your BIG-IP is limited by the memory of the BIG-IP.,The format of this content is slightly different depending on whether you specify a C(type) of C(address), C(integer), or C(string). See the examples section for examples of the different types of payload formats that are expected in your data group file.,When C(internal) is C(no), at least one record must be specified in either C(records) or C(records_content).
        attribute :records_src
        validates :records_src, type: String

        # @return [String, nil] When specifying C(records_content), this is the string of characters that will be used to break apart entries in the C(records_content) into key/value pairs.,By default, this parameter's value is C(:=).,This value cannot be changed once it is set.,This parameter is only relevant when C(internal) is C(no). It will be ignored otherwise.
        attribute :separator
        validates :separator, type: String

        # @return [Symbol, nil] When C(yes), will ensure that the remote data group file is deleted.,This parameter is only relevant when C(state) is C(absent) and C(internal) is C(no).
        attribute :delete_data_group_file
        validates :delete_data_group_file, type: Symbol

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(state) is C(present), ensures the data group exists.,When C(state) is C(absent), ensures that the data group is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
