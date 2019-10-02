# frozen_string_literal: true

# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Modules::Pear do
  subject(:mod) do
    Ansible::Ruby::Modules::Pear.new name: packages
  end

  describe '#to_h' do
    subject { mod.to_h }

    context 'array' do
      let(:packages) { %w[package1 package2] }
      it do
        is_expected.to eq pear: {
          name: 'package1,package2'
        }
      end
    end

    context 'single' do
      let(:packages) { 'package1' }
      it do
        is_expected.to eq pear: {
          name: 'package1'
        }
      end
    end
  end
end
