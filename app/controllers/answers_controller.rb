class AnswersController < ApplicationController
	before_action :set_question, only: [:create]
  
  def new
  	@answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.question_id = @question.id

    respond_to do |format|
      if @answer.save
        format.html { redirect_to survey_taker_dashboard_path(current_user), notice: 'Your Answer was successfully saved.' }
        format.json { render :show, status: :created, location: @questionanswer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:content, :question_id, :answered_by)
  end
end
