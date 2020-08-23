class SolutionsController < ApplicationController
  def index
  end

  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.new(solution_params)
    if @solution.save
      redirect_to @question, notice: "回答を受け付けました。"
    else
      flash.now[:alert] = "記入漏れがあります。"
      @solutions = Solution.where(question_id: @question.id)
      @solution = @question.solutions.new
      render template: "questions/show"
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:content)
  end
  
end
