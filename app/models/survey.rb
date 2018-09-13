class Survey < ApplicationRecord
	has_many :questions
	has_many :survey_responses

	enum status: [:active, :inactive]
end
