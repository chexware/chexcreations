class DropThoughtsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :comments
    drop_table :thoughts
  end
end
