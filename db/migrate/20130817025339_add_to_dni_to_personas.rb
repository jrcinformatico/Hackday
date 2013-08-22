class AddToDniToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :dni, :string
  end
end
