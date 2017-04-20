class SpeakersController < ApplicationController
  def index
  	@speakers = Speaker.all
  	render :json => @speakers
  end
end