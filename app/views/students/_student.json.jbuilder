json.extract! student, :id, :name, :firstname, :birthdate, :created_at, :updated_at
json.url student_url(student, format: :json)