class User < ApplicationRecord
	enum user_role: [:survey_taker, :survey_admin]
end
