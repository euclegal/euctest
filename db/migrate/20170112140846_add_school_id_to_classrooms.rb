class AddSchoolIdToClassrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :classrooms, :school_id, :integer
  end
end
