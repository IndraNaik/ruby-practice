def check(handles:, resources:, maximum_score:)
compute = handles['project_0.ComputeV1']
project_id = compute.project
zone = "us-west1-b"
set_instance = false
machine_type = false
os_type = false
ret_hash = {:score => 0, :message => "", :student_message => ""}
instance = compute.list_instances(project_id, zone, freeze_args: true) &. items || []
instance.each do |inst|
inst.disks.each do |disk|
  if inst.name.to_s.include?("indra-instance")
  set_instance = true
  if inst.machine_type.to_s.include?("e2-medium") || disk.licenses.to_s.include?("debian")
      machine_type = true && os_type = true
    else 
      ret_hash = {:score => 0, :message => "Machine Type and OS are not configured properly", :student_message => "You need to configure Machine Type and OS properly."}
  end
  end
end
end
  if set_instance
    ret_hash = {:score => maximum_score, :message => "Found indra-instance with machine type in project #{project_id}", :student_message => "Success! You have created an instance with the correct machine type."}
  else
    ret_hash = {:score => 0, :message => "Did not find indra-instance with machine type in project #{project_id}", :student_message => "You need to create an instance with the correct machine type."}
  end
return ret_hash
end