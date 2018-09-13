class Survey < ApplicationRecord
	has_many :questions
	has_many :survey_responses

	enum status: [:active, :inactive]
	accepts_nested_attributes_for :questions, :survey_responses
end
