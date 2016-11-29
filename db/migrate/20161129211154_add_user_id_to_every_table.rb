class AddUserIdToEveryTable < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :user_id, :integer
    add_column :students, :user_id, :integer
    add_column :parents, :user_id, :integer
  end
end
