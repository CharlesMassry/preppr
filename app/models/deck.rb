class Deck < ActiveRecord::Base
  belongs_to :admin, class_name: "User"

  has_many :cards, inverse_of: :deck, dependent: :destroy
  has_many :quizzes, inverse_of: :deck, dependent: :destroy
  has_many :deck_memberships, inverse_of: :deck, dependent: :destroy
  has_many :users, through: :deck_memberships

  after_create :make_admin_member_of_group

  def self.search(search)
    where("name ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%")
  end

  def make_admin_member_of_group
    admin.enters(self)
  end
end
