def check(handles:, resources:, maximum_score:)
  network = handles['project_0.ComputeV1']
  project_id = network.project

  instance_1 = false
  instance_2 = false
  subnet1 = false
  subnet2 = false

  ret_hash = { score: 0, message: "", student_message: "" }

  net = network.list_networks&.items || []

  net.each do |ins|
    if ins.name == "vpc-1" && ins.auto_create_subnetworks == false
      instance_1 = true
      # simple check: is there a first subnet at all?
      if ins.subnetworks.first.split("/").last && ins.subnetworks.last.split("/").last
        subnet1 = true
      end
    end

    if ins.name == "vpc-2" && ins.auto_create_subnetworks == true
      instance_2 = true
      if ins.subnetworks.first.split("/").last
        subnet2 = true
      end
    end
  end

if instance_1 && subnet1 && instance_2 && subnet2
    ret_hash = { score: maximum_score, message: "successful", student_message: "Done" }
  elsif instance_1 && subnet1 && !instance_2
    ret_hash = { score: 0, message: "failed", student_message: "Please check your VPC configuration. Ensure that vpc-2 has auto_create_subnetworks set to true." }
  elsif !instance_1 && subnet2 && instance_2
    ret_hash = { score: 0, message: "failed", student_message: "Please check your VPC configuration. Ensure that vpc-1 has auto_create_subnetworks set to false." }
  else
    ret_hash = { score: 0, message: "failed", student_message: "Please check your VPC configuration. Ensure that vpc-2 has auto_create_subnetworks set to true." }
  end
  return ret_hash
end
