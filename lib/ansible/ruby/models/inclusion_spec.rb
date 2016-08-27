# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Models::Inclusion do
  describe '#to_h' do
    subject(:hash) { instance.to_h }

    context 'basic' do
      let(:instance) { Ansible::Ruby::Models::Inclusion.new file: '/something.yml' }

      it { is_expected.to eq include: '/something.yml' }
    end

    context 'static with variables' do
      let(:instance) do
        Ansible::Ruby::Models::Inclusion.new file: '/something.yml',
                                             static: true,
                                             variables: { stuff: 123 }
      end

      it do
        is_expected.to eq include: '/something.yml',
                          static: true,
                          vars: { stuff: 123 }
      end
    end

    context 'static false' do
      let(:instance) do
        Ansible::Ruby::Models::Inclusion.new file: '/something.yml',
                                             static: false
      end

      it do
        is_expected.to eq include: '/something.yml',
                          static: false
      end
    end
  end
end
