json.extract! schedule, :id, :title, :start, :end, :allday, :content, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
