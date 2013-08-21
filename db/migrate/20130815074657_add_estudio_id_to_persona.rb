class AddEstudioIdToPersona < ActiveRecord::Migration
  def change
    add_column :personas, :estudio_id, :integer
    add_index :personas, :estudio_id
  end
end
