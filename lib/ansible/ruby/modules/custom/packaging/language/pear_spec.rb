# frozen_string_literal: true

# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Modules::Pear do
  subject(:mod) do
    Ansible::Ruby::Modules::Pear.new name: %w(package1 package2)
  end

  describe '#to_h' do
    subject {mod.to_h}

    it do
      is_expected.to eq pear: {
        name: 'package1,package2'
      }
    end
  end
end
