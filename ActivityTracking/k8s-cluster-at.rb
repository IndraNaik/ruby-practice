def check(handles:, resources:, maximum_score:)
k8s = handles['project_0.ContainerV1']
project_id = k8s.project
location = "us-east4"
set_k8s = false
id = 'projects/' + project_id + '/locations/' + location
ret_hash = { :score=> 0, :message=> "", :student_message => "" }
clusters = k8s.list_project_location_clusters(id)&. clusters || []
clusters.each do |k8s|
  if k8s.name.to_s.include?("test-cluster")
    set_k8s = true
  end
end

if set_k8s
  ret_hash = {:score => maximum_score, :message => "Found test-cluster in project #{project_id}", :student_message => "Success! You have created a Kubernetes cluster."}
  else
  ret_hash = {:score => 0, :message => "Did not find test-cluster in project #{project_id}", :student_message => "You need to create a Kubernetes cluster."}
  end
return ret_hash
end