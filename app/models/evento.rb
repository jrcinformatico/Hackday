class Evento < ActiveRecord::Base
	has_many :personas_eventos
	has_many :personas, :through => :personas_eventos
end
