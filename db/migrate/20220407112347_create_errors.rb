class CreateErrors < ActiveRecord::Migration[6.1]
  def change
    create_table :errors do |t|
      t.string :title, null: false
      t.text :detail, null: false
      t.integer :learning_phase, null: false
      t.text :solution, null: false
      t.string :url
      t.string :mentor_name
      t.integer :technical_item_id, null: false
      t.timestamps
    end
  end
end
