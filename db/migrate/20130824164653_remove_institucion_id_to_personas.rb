class RemoveInstitucionIdToPersonas < ActiveRecord::Migration
  def change
    remove_index :personas, :institucion_id
    remove_column :personas, :institucion_id, :integer
  end
end
