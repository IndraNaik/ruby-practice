def check (handles:, resources:, maximum_score: )
storage_handle = handles['project_0.StorageV1']
project_id = storage_handle.project

set_storage = false
bucket = "qwiklabs-gcp-00-61b3dd8a070c-bucket"

ret_hash = { :score=> 0, :message=> "", :student_message => "" }

storage = storage_handle.list_objects(bucket) &. items || []
storage.each do |buck|
  if buck.name.to_s.include?("string.rb")
      set_storage = true
    else 
      ret_hash[:message] = "Object is not present in the bucket."
      #return ret_hash
  end
end

ret_hash = {:score => 10, :message => "Object is found in the bucket #{bucket}", :student_message => "Done" }
return ret_hash
end
