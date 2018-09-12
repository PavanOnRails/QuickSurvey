class Survey < ApplicationRecord
	has_many :questions

	enum status: [:active, :inactive]
end
