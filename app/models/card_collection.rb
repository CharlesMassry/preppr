class CardCollection < ActiveRecord::Base
  belongs_to :admin, class_name: "User"

  has_many :cards, inverse_of: :card_collection, dependent: :destroy
  has_many :quizzes, inverse_of: :card_collection, dependent: :destroy
  has_many :collection_memberships, inverse_of: :card_collection, dependent: :destroy
  has_many :users, through: :collection_memberships
end
