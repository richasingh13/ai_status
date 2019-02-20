json.extract! trainee, :id, :name, :email, :contact_number, :date_of_birth, :local_address, :permanent_address, :college, :semester, :year, :profile_photo, :gender, :joining_date, :created_at, :updated_at
json.url trainee_url(trainee, format: :json)
