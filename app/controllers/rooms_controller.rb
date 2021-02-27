class RoomsController < ApplicationController
  before_action :authenticate_user!

 def index
   @rooms = current_user.rooms.includes(:chats).order("chats.created_at DESC")

 end

end
