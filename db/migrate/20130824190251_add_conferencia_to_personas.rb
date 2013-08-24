class AddConferenciaToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :conferencia, :text
  end
end
