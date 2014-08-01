class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :card_collections, foreign_key: :admin_id

  has_many :card_collections, through: :collection_memberships
  has_many :collection_memberships, inverse_of: :user, dependent: :destroy

  has_many :quizzes, inverse_of: :user, dependent: :destroy

  def admin_of(card_collection)
    card_collection.admin == self
  end
end
