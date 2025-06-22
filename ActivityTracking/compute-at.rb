def check(handles:, resources:, maximum_score: )
compute = handles ['project_0.ComputeV1']
project_id = compute.project
zone = "us-east1-b"
instance_1 = false
ret_hash = { :score=> 0, :message=> "", :student_message => "" }
instance = compute.list_instances(project_id, zone, freeze_args: true) &. items  || []
instance.each do |test|
test.disks.each do |test2|
if test.name.to_s.include?("instance") && test.machine_type.split('/').last && test.zone.split('/').last && test2.licenses.to_json.split('/').last
instance_1 = true
end
end
end

if instance_1
ret_hash = {:score => 10, :message => "successful", :student_message => "Done" }
else
ret_hash = { :score => 0, :message => "Unsuccessful", :student_message => "please create a vm instance with specified configuration" }
end
return ret_hash
end