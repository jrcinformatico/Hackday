class AddInstitucionToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :institucion, :integer
  end
end
