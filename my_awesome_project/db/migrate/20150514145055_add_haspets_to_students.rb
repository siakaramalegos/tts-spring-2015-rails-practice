class AddHaspetsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :has_pets, :boolean
  end
end
