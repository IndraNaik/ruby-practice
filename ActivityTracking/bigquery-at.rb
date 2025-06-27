def check(handles:, resources:, maximum_score:)
bigquery = handles['project_0.BigqueryV2']
project_id = bigquery.project

set_bigquery = false
set_bigquerytable = false

dataset = bigquery.list_datasets(project_id, freeze_args: true) &. datasets || []
dataset.each do |ds|
  if ds.dataset_reference.dataset_id.to_s.include?("bigQueryTest")
    set_bigquery = true
    tables = bigquery.list_tables(project_id, ds.dataset_reference.dataset_id, freeze_args: true) &. tables || []
    tables.each do |table|
      if table.table_reference.table_id.to_s.include?("user_info")
        set_bigquerytable = true
      end
    end
  end
end

if set_bigquery && set_bigquerytable
    ret_hash = {:score => maximum_score, :message => "Found bigQueryTest dataset with user_info table in project #{project_id}", :student_message => "Success! You have created a BigQuery dataset and table."}
  elsif set_bigquery && !set_bigquerytable
    ret_hash = {:score => 0, :message => "Found bigQueryTest dataset but did not find user_info table in project #{project_id}", :student_message => "You need to create a user_info table in the bigQueryTest dataset."}
  else
    ret_hash = {:score => 0, :message => "Did not find bigQueryTest dataset with user_info table in project #{project_id}", :student_message => "You need to create a BigQuery dataset and table."}
  end
return ret_hash
end