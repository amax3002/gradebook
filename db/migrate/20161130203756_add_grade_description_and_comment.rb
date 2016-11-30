class AddGradeDescriptionAndComment < ActiveRecord::Migration[5.0]
  def change
    add_column :grades, :title, :string
    add_column :grades, :comment, :text
  end
end
