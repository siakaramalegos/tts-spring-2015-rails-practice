class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :computer
      t.string :gender
      t.date :birthday

      t.timestamps null: false
    end
  end
end
