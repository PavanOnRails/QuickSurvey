class QuestionsController < ApplicationController
	before_action :set_question, only: [:show, :edit, :update, :destroy]
	before_action :set_survey, only: [:show, :new, :create, :edit, :update, :destroy]

  def index
    @questions = Question.all
  end
  
  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.survey_id = @survey.id

    respond_to do |format|
      if @question.save
        format.html { redirect_to survey_path(@survey), notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to survey_path(@survey), notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to survey_path(@survey), notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_question
    @question = Question.find(params[:id])
  end
  
  def set_survey
    @survey = Survey.find(params[:survey_id])
  end

  def question_params
    params.require(:question).permit(:title, :survey_id)
  end
end
