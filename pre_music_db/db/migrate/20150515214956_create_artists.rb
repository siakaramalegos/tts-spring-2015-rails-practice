class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.references :genre, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
