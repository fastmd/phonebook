class AbrecsController < ApplicationController
  
  def import
    Abrec.import(params[:file])
    redirect_to root_url, notice: "Humans imported."
  end

  def show
      if params[:id].nil?
        h = []
      else
        h = Abrec.search(params[:id])
      end
  end
  
end
