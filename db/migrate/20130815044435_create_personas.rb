class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.string :email
      t.string :celular
      t.integer :institucion_id
      t.integer :region_id
      t.text :comentario
      t.string :estudio

      t.timestamps
    end
    add_index :personas, :institucion_id
    add_index :personas, :region_id
  end
end
