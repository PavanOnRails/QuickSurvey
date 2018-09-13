class DashboardsController < ApplicationController
	def survey_admin_dashboard
		@surveys = Survey.where(status: :active)
	end

	def survey_taker_dashboard
	end
end
