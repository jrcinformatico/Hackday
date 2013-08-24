class Persona < ActiveRecord::Base
	belongs_to :region
	#belongs_to :institucion
	belongs_to :estudio
	
	has_many :personas_eventos
	has_many :eventos, :through => :personas_eventos
		
	validates :nombres, :apellidos, :email, :estudio_id, :presence => true
	
	#validates_uniqueness_of :dni
	validates_uniqueness_of :email
	#validates :dni,length: { is: 8}, :presence => true
	#validates_format_of :dni, :with => /\A[0-9]{8}\Z/
	
	validates_uniqueness_of :celular
	validates :celular,length: { is: 9}, :presence => true
	validates_format_of :celular, :with => /\A[0-9]{9}\Z/
	
	validates :comentario, length: { maximum: 150}
	
	validates :conferencia, :presence => true 
	validates :conferencia, length: { maximum: 40}
	before_validation( :on => :create) do
		predeterminados
	end	
	
	def predeterminados
		self.institucion = 'No se indico' if self.institucion.blank?		
		self.comentario = 'No comento' if self.comentario.blank?
	end
end

