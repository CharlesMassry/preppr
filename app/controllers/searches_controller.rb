class SearchesController < ApplicationController
  def show
    @search = Deck.search(params[:search])
  end
end
