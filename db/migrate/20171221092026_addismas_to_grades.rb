class AddismasToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :ismas, :integer
  end
end
