class FriendshipsController < ApplicationController
  
  before_action :set_friend, only: :destroy

  def index
    @friends = current_user.friends
  end

  private

  def set_friend
    @friend = current_user.friends.find(params[:id])
  end
end
  
  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    flash[:notice] = "Friend was successfully removed"
    redirect_to my_friends_path
  end
 