class ReportesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
	@personas=Persona.all
	@totalpersona=Persona.count
  end
end
