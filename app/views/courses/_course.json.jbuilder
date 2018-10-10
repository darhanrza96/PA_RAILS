json.extract! course, :id, :id, :name, :prerequisites, :about, :created_at, :updated_at
json.url course_url(course, format: :json)
