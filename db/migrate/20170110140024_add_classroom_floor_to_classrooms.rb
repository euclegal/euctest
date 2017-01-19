class AddClassroomFloorToClassrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :classrooms, :flor, :integer
  end
end
