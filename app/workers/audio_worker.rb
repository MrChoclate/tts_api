require 'sidekiq'


class AudioWorker
	include Sidekiq::Worker

	def perform(audio_id, audio_text, audio_speaker_id)
		audio = Audio.find(audio_id)

		audio.status = "complete"
		audio.save!
	end
end