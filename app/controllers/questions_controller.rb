class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: "DESC")
    @question = Question.new
  end
  def show
    @question = Question.find(params[:id])
  end
  
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path, notice: "質問を受け付けました。"
    else
      @questions = Question.order(id: :desc)
      flash.now[:alert] = "記入漏れがあります。"
      render :index
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end

end
