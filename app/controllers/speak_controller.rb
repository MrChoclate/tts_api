require_relative "../workers/audio_worker"

class SpeakController < ApplicationController
  def create
  	speaker_id = params[:speaker_id].to_i
  	text = params[:text]

  	@audio = Audio.create(text: text, speaker_id: speaker_id)
  	@audio.save!

  	AudioWorker.perform_in(30.seconds, @audio.id, @audio.text, @audio.speaker_id)
  	
  	render :json => @audio
  end
end
