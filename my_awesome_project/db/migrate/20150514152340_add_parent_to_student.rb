class AddParentToStudent < ActiveRecord::Migration
  def change
    add_column :students, :parents, :string
  end
end
