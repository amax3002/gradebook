class AddTeacherIdToGrade < ActiveRecord::Migration[5.0]
  def change
    add_column :grades, :teacher_id, :integer
  end
end
