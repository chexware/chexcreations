class CreateToughts < ActiveRecord::Migration[5.1]
  def change
    create_table :thoughts do |t|
      t.string :title
      t.datetime :publish_date
      t.text :content

      t.timestamps
    end
  end
end
