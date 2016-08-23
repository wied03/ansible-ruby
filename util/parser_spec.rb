# See LICENSE.txt for license
require 'spec_helper'
require 'ansible-ruby'
require_relative './parser'

describe Ansible::Ruby::Parser do
  describe '::from_yaml_string' do
    context 'standard' do
      let(:desc_yaml) do
        <<YAML
---
module: postgresql_db
short_description: Add or remove PostgreSQL databases from a remote host.
description:
   - Add or remove PostgreSQL databases from a remote host.
version_added: "0.6"
options:
  name:
    description:
      - name of the database to add or remove
    required: true
    default: null
  login_user:
    description:
      - The username used to authenticate with
    required: false
    default: null
  port:
    description:
      - Database port to connect to.
    required: false
    default: 5432
  state:
    description:
      - The database state
    required: false
    default: present
    choices: [ "present", "absent" ]
notes:
   - The default authentication assumes that you are either logging in as or sudo'ing to the C(postgres) account on the host.
   - This module uses I(psycopg2), a Python PostgreSQL database adapter. You must ensure that psycopg2 is installed on
     the host before using this module. If the remote host is the PostgreSQL server (which is the default case), then PostgreSQL must also be installed on the remote host. For Ubuntu-based systems, install the C(postgresql), C(libpq-dev), and C(python-psycopg2) packages on the remote host before using this module.
requirements: [ psycopg2 ]
author: "Ansible Core Team"
YAML
      end

      let(:example_yaml) do
        <<YAML
# Create a new database with name "acme"
- postgresql_db: name=acme
# Create a new database with name "acme" and specific encoding and locale
# settings. If a template different from "template0" is specified, encoding
# and locale settings must match those of the template.
- postgresql_db: name=acme
                 encoding='UTF-8'
                 lc_collate='de_DE.UTF-8'
                 lc_ctype='de_DE.UTF-8'
                 template='template0'
YAML
      end

      subject { Ansible::Ruby::Parser.from_yaml_string desc_yaml, example_yaml }

      it do
        is_expected.to eq <<RUBY
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Postgresql_db < Base
        # @return [String] name of the database to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] The username used to authenticate with
        attribute :login_user

        # @return [Fixnum] Database port to connect to.
        attribute :port
        validates :port, type: Fixnum

        # @return [String] The database state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

      end
    end
  end
end
RUBY
      end
    end
  end
end
