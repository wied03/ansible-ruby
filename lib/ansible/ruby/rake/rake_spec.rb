require 'spec_helper'
require 'ansible-ruby'

describe 'Rake task' do
  let(:rake_dir) { File.dirname(__FILE__) }

  around do |example|
    Dir.chdir rake_dir do
      example.run
    end
  end

  def rake(task, expect_success=true)
    @output = `rake -f Rakefile_test.rb #{task}`
    puts @output
    expect($?.success?).to be_truthy if expect_success
    @output
  end

  describe 'description works' do
    subject { rake '-T' }

    it do
      is_expected.to eq <<OUTPUT
rake default         # the ansible task default
rake dependent_task  # dependent task
rake no_playbook     # no playbook task
rake with_deps       # task with deps
rake with_options    # with options task
OUTPUT
    end
  end

  context 'default' do
    before { rake '' }

    it 'outputs stuff' do
      expect(@output).to eq 'foo'
      pending 'Write this test'
    end
    pending 'write this'
  end
  pending 'write this'
end
