
def check(handles:, resources:, maximum_score:)
 # service handles initialization
storage = handles['project_0.StorageV1']
# project_id initialization
project_id = storage.project

storage1 = false
location1 = false
ret_hash = { :score=> 0, :message=> "", :student_message => "" }
storage2 = storage.list_buckets &. items || []
storage2.each do |bucket|
  if bucket.name == "test-at-bucket" && bucket.storage_class == "NEARLINE"
    storage1 = true
    if bucket.location_type == "multi-region"
      location1 = true
    end
  end
end
# Check if the storage bucket exists with the specified configuration 
  if storage1 && location1
    ret_hash = {:score => maximum_score, :message => "successful", :student_message => "Done" }
  elsif storage1 && !location1
    ret_hash = { :score => 5, :message => "Unsuccessful", :student_message => "please create a storage bucket in specified location type" } 
  else
    ret_hash = { :score => 0, :message => "Unsuccessful", :student_message => "please create a storage bucket with specified configuration" } 
  end
return ret_hash
end



def check(handles:, resources:, maximum_score:)
 # service handles initialization
storage = handles['project_0.StorageV1']
# project_id initialization
project_id = storage.project

storage1 = false
location1 = false
ret_hash = { :score=> 0, :message=> "", :student_message => "" }
storage2 = storage.list_buckets &. items || []
storage2.each do |bucket|
  if bucket.name == "coldline-at-bucket" && bucket.storage_class == "COLDLINE"
    storage1 = true
    if bucket.location_type == "multi-region"
      location1 = true
    end
  end
end
# Check if the storage bucket exists with the specified configuration 
  if storage1 && location1
    ret_hash = {:score => maximum_score, :message => "successful", :student_message => "Done" }
  elsif storage1 && !location1
    ret_hash = { :score => 5, :message => "Unsuccessful", :student_message => "please create a storage bucket in specified location type" } 
  else
    ret_hash = { :score => 0, :message => "Unsuccessful", :student_message => "please create a storage bucket with specified configuration" } 
  end
return ret_hash
end
