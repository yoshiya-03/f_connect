class RoomsController < ApplicationController
  before_action :authenticate_user!

 def index
   @rooms = current_user.rooms.includes(:chats).order("chats.created_at DESC")
   @user = User.find(params[:id])
 end

end
