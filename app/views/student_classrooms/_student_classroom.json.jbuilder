json.extract! student_classroom, :id, :student_id, :classroom_id, :created_at, :updated_at
json.url student_classroom_url(student_classroom, format: :json)