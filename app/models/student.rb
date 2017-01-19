class Student < ApplicationRecord
	has_many :student_classrooms
	has_many :classrooms, through: :student_classrooms
end
