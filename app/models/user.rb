class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :decks, foreign_key: :admin_id

  has_many :decks, through: :deck_memberships
  has_many :deck_memberships, inverse_of: :user, dependent: :destroy

  has_many :quizzes, inverse_of: :user, dependent: :destroy

  def admin_of(deck)
    deck.admin == self
  end

  def not_admin_of(deck)
    !admin_of(deck)
  end

  def not_member_of(deck)
    !member_of(deck)
  end

  def member_of(deck)
    decks.include?(deck)
  end

  def enters(deck_group)
    DeckMembership.create(user: self, deck: deck_group)
  end
end
