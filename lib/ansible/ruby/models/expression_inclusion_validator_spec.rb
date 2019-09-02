# frozen_string_literal: true

# See LICENSE.txt for license
require 'spec_helper'
require 'ansible/ruby/models/base'

describe ExpressionInclusionValidator do
  before { stub_const 'Ansible::Ruby::TypeValTestModel', klass }

  subject { instance }

  let(:klass) do
    Class.new(Ansible::Ruby::Models::Base) do
      attribute :foo
      validates :foo, expression_inclusion: { in: %i[yes no] }, allow_nil: true
    end
  end

  context 'passes' do
    let(:instance) { klass.new foo: :yes }

    it { is_expected.to be_valid }
  end

  context 'fails' do
    let(:instance) { klass.new foo: :nope }

    it { is_expected.to_not be_valid }
    it { is_expected.to have_errors foo: 'nope needs to be [:yes, :no]' }
  end

  context 'custom error' do
    let(:klass) do
      Class.new(Ansible::Ruby::Models::Base) do
        attribute :foo
        validates :foo, expression_inclusion: { in: %i[yes no], message: '%{value} needs to be :yes, :no' }, allow_nil: true
      end
    end
    let(:instance) { klass.new foo: :nope }

    it { is_expected.to_not be_valid }
    it { is_expected.to have_errors foo: 'nope needs to be :yes, :no' }
  end

  context 'Jinja expression' do
    let(:instance) { klass.new foo: Ansible::Ruby::Models::JinjaExpression.new('howdy') }

    it { is_expected.to be_valid }
  end
end
