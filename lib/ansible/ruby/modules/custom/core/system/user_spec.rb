# frozen_string_literal: true
# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Modules::User do
  subject(:mod) do
    Ansible::Ruby::Modules::User.new name: 'the_username',
                                     groups: %w(group1 group2)
  end

  describe '#to_h' do
    subject { mod.to_h }

    it do
      is_expected.to eq user: {
        name: 'the_username',
        groups: 'group1,group2'
      }
    end
  end
end
