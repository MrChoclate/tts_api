class Audio < ApplicationRecord
	belongs_to :speaker

	validates :text, presence: true
	validates :status, presence: true, inclusion: { in: %w(pending error complete) }

	after_initialize :default_values

	def generate_audio_file
		# TODO
		self.status = "complete"
		save!
	end


	private
		def default_values
			self.status ||= "pending"
		end
end
