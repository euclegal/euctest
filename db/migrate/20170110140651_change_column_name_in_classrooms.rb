class ChangeColumnNameInClassrooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :classrooms, :flor, :floor
  end
end
