class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.integer :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
