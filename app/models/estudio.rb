class Estudio < ActiveRecord::Base
	has_many :personas
	
	validates_uniqueness_of :nombre
	validates_presence_of :nombre
end
