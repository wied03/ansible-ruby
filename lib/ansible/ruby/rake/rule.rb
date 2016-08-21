rule '.yml' => '.rb' do |t|
  puts "Updating Ansible file #{t.name} from #{t.source}..."
  ruby = File.read t.source
  playbook_builder = Ansible::Ruby::DslBuilders::Playbook.new
  playbook = playbook_builder.evaluate ruby
  yml = Ansible::Ruby::Serializer.serialize playbook.to_h
  File.write t.name, yml
end
