def check(handles:, resources:, maximum_score:)
bigquery = handles['project_0.BigqueryV2']
project_id = bigquery.project
set_job = false
dataset_id = "bigQueryTest"
table_id = "user_info"
job_state = "DONE"

ret_hash = { :score => 0, :message => "", :student_message => "" }

jobs = bigquery.list_jobs(all_users:true)&.jobs || []
jobs.each do |job|
    if !(job&.status&.error_result) && job&.status&.state==job_state
      ref_tables = job&.statistics&.query&.referenced_tables || []
      ref_tables.each do |table|
        if table.table_id==table_id && table.dataset_id==dataset_id && table.project_id==project_id
          job_1 = job.job_reference.job_id
          if job_1.include?('bquxjob') || job_1.include?('bqjob')
            set_job = true
            ret_hash[:message]= "The job #{job_1} is a BigQuery job that references the table #{table_id} in dataset #{dataset_id}."
            ret_hash[:student_message]= "The job #{job_1} is a BigQuery job that references the table #{table_id} in dataset #{dataset_id}."
          end
        end
      end
    end
  end

if set_job
  ret_hash = {:score => maximum_score, :message => "Found bigQueryTest dataset with user_info table in project #{project_id}", :student_message => "Success! You have created a BigQuery dataset, table and executed the job."}
  else
  ret_hash = {:score => 0, :message => "Did not find bigQueryTest dataset with user_info table in project #{project_id}", :student_message => "You have not created a BigQuery dataset, table or executed the job."}
  end
return ret_hash
end
