class CreatePersonasEventos < ActiveRecord::Migration
  def change
    create_table :personas_eventos do |t|
      t.integer :persona_id
      t.integer :evento_id

      t.timestamps
    end
    add_index :personas_eventos, :persona_id
    add_index :personas_eventos, :evento_id
  end
end
