class TextsController < ApplicationController

  def index
  @texts = Text.all
  @q = Text.ransack(params[:q])
  @texts = @q.result(distinct: true)
  end

  def show
    @texts = Text.find(params[:id])
  end

end
