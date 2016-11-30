class RemoveFullNameAllTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :teachers, :full_name, :string
    remove_column :students, :full_name, :string
    remove_column :parents, :full_name, :string
  end
end
