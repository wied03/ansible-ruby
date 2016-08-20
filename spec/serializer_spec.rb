require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::Serializer do
  describe '::serialize' do
    subject { Ansible::Ruby::Serializer.serialize hash }

    context 'standard' do
      let(:hash) do
        { 'ec2' => { 'foo' => 123 } }
      end

      it do
        text = <<-YAML
---
# This is a generated YAML file by ansible-ruby, DO NOT EDIT
ec2:
  foo: 123
YAML
        # Don't expecte a trailing CR
        is_expected.to eq text.rstrip
      end
    end
  end

  context 'nested unit' do
    pending 'write this'
  end
end
