class ReportesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
	@personas=Persona.all
	@totalpersona=Persona.count
  end
  
  def correos
	@personas=Persona.all.order("region_id")
  end
end
