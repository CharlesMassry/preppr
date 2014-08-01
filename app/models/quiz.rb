class Quiz < ActiveRecord::Base
  belongs_to :user
  belongs_to :card_collection
end
