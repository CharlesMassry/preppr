class DecksController < ApplicationController
  def new

  end

  def create
    deck = Deck.new(deck_params)
    deck.admin = current_user
    deck.save
    redirect_to deck
  end

  def show
    @deck = Deck.find(params[:id])
  end

  private

  def deck_params
    params.require(:deck).permit(:name, :description)
  end
end
