class User < ApplicationRecord
	has_secure_password
	attr_accessor :password_confirmation
	enum user_role: [:survey_taker, :survey_admin]

	def full_name
    [first_name,last_name].select(&:present?).join(' ').titleize
  end
end
