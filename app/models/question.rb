class Question < ApplicationRecord
	belongs_to :survey
	has_one :answer
end
