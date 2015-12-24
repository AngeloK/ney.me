class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.text :content
      t.integer :status
      t.integer :is_top
      t.string :img_url

      t.timestamps null: false
    end
  end
end
