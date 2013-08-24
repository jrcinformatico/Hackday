class AddInstitucionToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :institucion, :string
  end
end
