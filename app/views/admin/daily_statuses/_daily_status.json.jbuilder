json.extract! daily_status, :id, :in_time, :out_time, :break, :user, :created_at, :updated_at
json.url daily_status_url(daily_status, format: :json)
