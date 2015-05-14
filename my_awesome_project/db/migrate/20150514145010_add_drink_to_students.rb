class AddDrinkToStudents < ActiveRecord::Migration
  def change
    add_column :students, :drink, :string
  end
end
