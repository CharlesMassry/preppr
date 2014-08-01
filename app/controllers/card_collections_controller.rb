class CardCollectionsController < ApplicationController
  def new

  end

  def create
    card_collection = CardCollection.new(card_collection_params)
    card_collection.admin_id = current_user.id
    card_collection.save
    redirect_to card_collection
  end

  def show
    @card_collection = CardCollection.find(params[:id])
  end

  private

  def card_collection_params
    params.require(:card_collection).permit(:name, :description)
  end
end
