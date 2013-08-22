class CreateEstudios < ActiveRecord::Migration
  def change
    create_table :estudios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
