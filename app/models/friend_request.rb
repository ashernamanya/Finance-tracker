class FriendRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, class_name: 'User'
end 
  # This method will build the actual association and destroy the request
  def accept
    user.friends << friend
    destroy
  end
  validate :not_friends
  validate :not_pending
  validate :not_self

private

def not_self
  errors.add(:friend, "can't be equal to user") if user == friend
  def not_friends
    errors.add(:friend, 'is already added') if user.friends.include?(friend)
  end

  def not_pending
    errors.add(:friend, 'already requested friendship') if friend.pending_friends.include?(user)
  end
end
