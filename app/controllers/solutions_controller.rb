class SolutionsController < ApplicationController
  def index
  end

  def create
    question = Question.find_by(id: params[:question_id])
    # question = Question.find(params[:id])
    question.solutions.create!(solution_params)
    redirect_to question
  end

  def solution_params
    params.require(:solution).permit(:content)
  end
end
