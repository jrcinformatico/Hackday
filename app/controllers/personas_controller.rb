class PersonasController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
  before_action :set_persona, only: [:show, :edit, :update, :destroy]
  
  def edit
  end

  def new
	@persona = Persona.new
  end

  def create
	@persona = Persona.new(persona_params)
	
	if @persona.save
		flash[:notice]="Se registró correctamente"
		redirect_to conferencia_index_path
	else
		render action: 'new'
	end
  end
  
  def show
  end
  
  def update
	if @persona.update(persona_params)
		flash[:notice]="Se actualizó los datos"
		redirect_to @persona
     else
        render action: 'edit'        
     end
  end
  private
  
  def set_persona
	@persona = Persona.find(params[:id])
  end
  
  def persona_params
	params.require(:persona).permit(:dni, :nombres, :apellidos, :email, :celular, :institucion_id, :region_id, :comentario, :estudio_id)
  end  
end
