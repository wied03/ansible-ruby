# frozen_string_literal: true

# see LICENSE.txt in project root
require 'spec_helper'

describe Ansible::Ruby::Modules::Set_fact do
  subject(:mod) do
    Ansible::Ruby::Modules::Set_fact.new free_form: { stuff: 123,
                                                      howdy: 456 }
  end

  describe '#to_h' do
    subject { mod.to_h }

    it do
      is_expected.to eq set_fact: {
        stuff: 123,
        howdy: 456
      }
    end

    context 'jinja' do
      subject do
        mod = Ansible::Ruby::Modules::Set_fact.new free_form: { stuff: 123,
                                                                howdy: Ansible::Ruby::Models::JinjaExpression.new('foo') }
        mod.to_h
      end

      it do
        is_expected.to eq set_fact: {
          stuff: 123,
          howdy: '{{ foo }}'
        }
      end
    end
  end
end
