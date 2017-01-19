class Classroom < ApplicationRecord
	belongs_to :school
	has_many :student_classrooms
	has_many :students, through: :student_classrooms
end
