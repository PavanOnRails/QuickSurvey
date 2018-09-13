class DashboardsController < ApplicationController
	def survey_admin_dashboard
		@surveys = Survey.all
	end

	def survey_taker_dashboard
	end
end
