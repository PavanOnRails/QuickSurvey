class SurveyResponse < ApplicationRecord
	belongs_to :survey

	enum rating: [:excellent, :great, :good, :normal, :poor]
end
