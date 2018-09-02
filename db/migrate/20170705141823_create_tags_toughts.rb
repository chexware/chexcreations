class CreateTagsToughts < ActiveRecord::Migration[5.1]
  def change
    create_table :tags_thoughts, id: false do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :thought, index: true
    end
  end
end
