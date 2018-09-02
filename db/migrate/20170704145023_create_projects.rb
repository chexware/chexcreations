class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :kind
      t.string :link
	  t.string :image
      t.timestamps
    end
  end
end
