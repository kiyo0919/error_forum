class CreateErrorComments < ActiveRecord::Migration[6.1]
  def change
    create_table :error_comments do |t|
      t.text :comment
      t.integer :error_id

      t.timestamps
    end
  end
end
