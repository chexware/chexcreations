class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :name, null: false
      t.string :password_digest, limit: 128, null: false
    end

  end
end
