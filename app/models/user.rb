class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  validates :username, uniqueness: true

  validates :username, :email, presence: { require: true }

  validates :password, presence: true, on: :create

  validates :password, confirmation: { case_sensitive: true }
  validates :password_confirmation, presence: true, on: :create

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships, source: :friend

  has_many :parties, dependent: :destroy

  def find_parties
    Party.where(user_id: id).or(Party.where(id: PartyGuest.where(user_id: id).pluck(:party_id)))
  end

  def create_friendships(current_user_id, new_friend_id)
    Friendship.create(user_id: current_user_id,
                      friend_id: new_friend_id)
    Friendship.create(user_id: new_friend_id,
                      friend_id: current_user_id)
  end

  def create_friendships(current_user_id, new_friend_id)
    Friendship.create(user_id: current_user_id,
                      friend_id: new_friend_id)
    Friendship.create(user_id: new_friend_id,
                      friend_id: current_user_id)
  end
end
