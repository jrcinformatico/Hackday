class RemoveEstudioFromPersonas < ActiveRecord::Migration
  def change
    remove_column :personas, :estudio, :string
  end
end
