class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.datetime :publish_date
      t.text :content
      t.references :thought, foreign_key: true

      t.timestamps
    end
  end
end
