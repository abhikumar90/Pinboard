class FriendshipsController < ApplicationController



def create
  @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
  if @friendship.save
    flash[:notice] = "Added friend."
    redirect_to root_url
  else
    flash[:notice] = "Unable to add friend."
    redirect_to root_url
  end
end

def destroy
  @friendship = current_user.friendships.where(friend_id: params[:id]).first
  @friendship.destroy
  flash[:notice] = "Removed friendship."
  redirect_to view_my_profile_path
end

def show_user_profile
  @user = params[:id]
 render :template => "/friendships/other_user_details",:locals => { :id => @user }
end

def assign_picture_to_user
 @user = params[:id]
 render :template => "/friendships/assign_picture_to_user",:locals => { :id => @user }
end

end
