class DeckMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
end
