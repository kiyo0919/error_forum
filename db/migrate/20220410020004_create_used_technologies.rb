class CreateUsedTechnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :used_technologies do |t|
      t.string :name

      t.timestamps
    end
  end
end
