class AddColumnsToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :estado, :boolean
  end
end
