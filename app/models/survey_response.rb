class SurveyResponse < ApplicationRecord
	belongs_to :survey

	enum rating: [:five_star, :four_star, :three_star, :two_star, :one_star]
end
