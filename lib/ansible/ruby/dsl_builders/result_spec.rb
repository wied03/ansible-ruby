# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::DslBuilders::Result do
  let(:name_fetcher) do
    lambda { 'the_var' }
  end

  subject(:result) { Ansible::Ruby::DslBuilders::Result.new name_fetcher }

  describe '#to_s' do
    subject { result.to_s }

    it { is_expected.to eq 'the_var' }
  end

  describe 'chain' do
    subject { result.stuff }

    it { is_expected.to eq 'the_var.stuff' }
  end
end
