class DashboardsController < ApplicationController
	before_action :set_surveys

	def survey_admin_dashboard
	end

	def survey_taker_dashboard
		@answer = Answer.new
	end

	private
	def set_surveys
		@surveys = Survey.where(status: :active)
	end
end
