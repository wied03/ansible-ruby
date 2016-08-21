require 'spec_helper'
require 'ansible-ruby'
require 'ansible/ruby/modules/base'

describe Ansible::Ruby::Modules::Base do
  before do
    stub_const('Ansible::Ruby::Modules::Ec2', module_klass)
  end

  let(:module_klass) do
    Class.new(Ansible::Ruby::Modules::Base) do
      attribute :foo
      validates :foo, presence: true
    end
  end

  subject { instance.to_h }

  let(:instance) { module_klass.new(foo: 123) }

  it do
    is_expected.to eq('ec2' => {
      'foo' => 123
    })
  end
end
