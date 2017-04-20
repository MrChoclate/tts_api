class AudiosController < ApplicationController
  def index
  	@audios = Audio.all
  	render :json => @audios
  end

  def show
  	@audio = Audio.find(params[:id])
  	render :json => @audio
  end
end
