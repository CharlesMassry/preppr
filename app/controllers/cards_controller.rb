class CardsController < ApplicationController
  def new
    @card = Card.new
  end

  def create
    card = Card.new(card_params)
    card.deck = find_deck
    card.save
    redirect_to card.deck
  end

  private

  def card_params
    params.require(:card).permit(:front, :back)
  end

  def find_deck
    Deck.find(params[:deck_id])
  end
end
