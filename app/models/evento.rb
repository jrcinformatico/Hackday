class Evento < ActiveRecord::Base
	has_and_belongs_to_many :personas, :join_table => :personas_eventos
end
