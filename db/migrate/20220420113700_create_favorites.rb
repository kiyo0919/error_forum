class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :mentor_id
      t.integer :error_id

      t.timestamps
    end
  end
end
