class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.string :letter_grade
      t.date :date_of_grade
      t.string :grade_type

      t.timestamps
    end
  end
end
