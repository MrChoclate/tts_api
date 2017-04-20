class Speaker < ApplicationRecord
	has_many :audios

	validates :name, presence: true
	validates :language, presence: true, inclusion: { in: %w(en fr) }
end
