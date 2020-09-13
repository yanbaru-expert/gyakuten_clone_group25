class TextsController < ApplicationController

  def index
    @texts = Text.all
  end

  def search
    user_search = self.index
    @texts = user_search.execute
  end

private

  def params_user_search
    params.permit(:search_title)
  end

end
