class Api::V1::SurveysController < ApiController
	before_action :set_survey, only: [:show, :update, :destroy]
	skip_before_action :authenticate_user, only: [:index, :show]

  def index
    @surveys = Survey.where(status: :active)
    render json: @surveys.to_json(:include => [:survey_responses, questions: {include: [:answer]}])
  end
  
  def show
  	render json: @survey
  end

  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      render json: @survey, status: :created, location: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  def update
    if @survey.update(survey_params)
      render json: @survey, status: :ok, location: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @survey.destroy
  end

  private
  def set_survey
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.permit(:title, :status)
  end
end
