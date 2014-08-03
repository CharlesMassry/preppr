class DeckMembershipsController < ApplicationController
  def create
    deck = find_deck
    current_user.enters(deck)
    redirect_to deck
  end

  def destroy
    deck = find_deck
    current_user.leaves(deck)
    redirect_to deck
  end

  private

  def find_deck
    Deck.find(params[:id])
  end
end
